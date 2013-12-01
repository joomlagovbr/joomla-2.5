<?php
/*
 * @package		
 * @copyright	
 * @license		
 *
 * @component 
 * @copyright 
 * @license 
 */

defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.plugin.plugin' );

class plgSearchyoutubeGallery extends JPlugin
{


	public function __construct(& $subject, $config) {
		parent::__construct($subject, $config);
		$this->loadLanguage();
	}
	
	function onContentSearchAreas() {
		static $areas = array(
			'youtubegallery' => 'PLG_SEARCH_YOUTUBEGALLERY_YOUTUBEGALLERY'
			);
			return $areas;
	}



	function onContentSearch( $text, $phrase = '', $ordering = '', $areas = null ) {
	
		$db		= JFactory::getDbo();
		$app	= JFactory::getApplication();
		$user	= JFactory::getUser();
		$groups	= implode(',', $user->getAuthorisedViewLevels());
		
		$component			=	'com_youtubegallery';
		$paramsC			= JComponentHelper::getParams($component) ;
		
		$display_access_category 		= $paramsC->get( 'display_access_category', 1 );

		if (is_array( $areas )) {
			if (!array_intersect( $areas, array_keys( $this->onContentSearchAreas() ) )) {
				return array();
			}
		}

		$limit			= $this->params->get('search_limit', 20);

		$text = trim( $text );
		if ($text == '') {
			return array();
		}

		$section = JText::_( 'PLG_SEARCH_YOUTUBEGALLERY_YOUTUBEGALLERY');
		
		
		switch ($ordering)
		{
			case 'oldest':
				$order = 'a.publisheddate ASC';
				break;

			case 'popular':
				$order = 'a.statistics_viewCount DESC';
				break;

			case 'alpha':
				$order = 'a.title ASC';
				break;

			case 'category':
				$order = 'c.categoryname ASC, a.title ASC';
				break;

			case 'newest':
			default:
				$order = 'a.publisheddate DESC';
		}
		
		$wheres	= array();
		switch ($phrase)
		{
			case 'exact':
				$text		= $db->Quote('%'.$db->getEscaped($text, true).'%', false);
				$wheres2	= array();
				$wheres2[]	= 'a.title LIKE '.$text;
				//$wheres2[]	= 'a.name LIKE '.$text;
				// $wheres2[]	= 'a.metakey LIKE '.$text;
				// $wheres2[]	= 'a.metadesc LIKE '.$text;
				$wheres2[]	= 'a.description LIKE '.$text;
				$where		= '(' . implode(') OR (', $wheres2) . ')';
				break;

			case 'all':
			case 'any':
			default:
				$words	= explode(' ', $text);
				$wheres = array();
				foreach ($words as $word)
				{
					$word		= $db->Quote('%'.$db->getEscaped($word, true).'%', false);
					$wheres2	= array();
					$wheres2[]	= 'a.title LIKE '.$word;
					//$wheres2[]	= 'a.name LIKE '.$word;
					// $wheres2[]	= 'a.metakey LIKE '.$word;
					// $wheres2[]	= 'a.metadesc LIKE '.$word;
					$wheres2[]	= 'a.description LIKE '.$word;
					$wheres[]	= implode(' OR ', $wheres2);
				}
				$where	= '(' . implode(($phrase == 'all' ? ') AND (' : ') OR ('), $wheres) . ')';
				break;
		}
		
		$rows = array();
		
	

		if ( $limit > 0 ) {			
			
			$query	= $db->getQuery(true);
			$query->select(' CASE WHEN CHAR_LENGTH(a.title) THEN CONCAT_WS(\': \', c.categoryname, a.title) ELSE c.categoryname END AS title, '
			. ' CASE WHEN CHAR_LENGTH(a.description) THEN CONCAT_WS(\': \', a.title, a.description) ELSE a.title END AS text, '
			. ' a.id, a.publisheddate AS created, '
			. ' CONCAT_WS(":", a.id, a.videoid) as slug, '
			. ' CONCAT_WS(":", c.id, c.categoryname) AS catslug, '
			. ' CONCAT_WS( " / ", '.$db->Quote($section).', a.title ) AS section,'
			. ' "2" AS browsernav, c.id as catid');
			$query->from('#__youtubegallery_videos AS a');
			$query->innerJoin('#__youtubegallery_videolists AS l ON l.id = a.listid');
			$query->innerJoin('#__youtubegallery_categories AS c ON c.id = l.catid');
			$query->where('('.$where.')');
			$query->order($order);

			$db->setQuery( $query, 0, $limit );
			$listImages = $db->loadObjectList();

			if(isset($listImages)) {
				foreach($listImages as $key => $value) {

					$videoid = explode(':', $value->slug);
					$videoid = $videoid[1];

					$listImages[$key]->href = JRoute::_('index.php?option=com_youtubegallery&view=youtubegallery&Itemid=183&videoid='.$videoid);		
				
				}
			}
			
			$rows[] = $listImages;
		}
		
		$results = array();
		if(count($rows)) {
			foreach($rows as $row) {
				$results = array_merge($results, (array) $row);
			}
		}
		
		return $results;
	}
}
