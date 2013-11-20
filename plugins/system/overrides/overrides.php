<?php
/**
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

/**
 * Joomla! Page Overrides Plugin
 *
 * @package		Joomla.Plugin
 * @subpackage	System.cache
 */
class plgSystemOverrides extends JPlugin
{

	var $_cache = null;

	/**
	 * Constructor
	 *
	 * @access	protected
	 * @param	object	$subject The object to observe
	 * @param	array	$config  An array that holds the plugin configuration
	 * @since	1.0
	 */
	function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
	}

	/**
	* Converting the site URL to fit to the HTTP request
	*
	*/
	function onAfterInitialise()
	{
		$new_com_media_base = trim($this->params->get('new_com_media_base', 'images'));
		if( $new_com_media_base != 'images' &&  $new_com_media_base != '' )
			define('COM_MEDIA_BASE', $new_com_media_base );

		// $new_hwdms_path_media_files = trim($this->params->get('new_hwdms_path_media_files', ''));
		// $app =& JFactory::getApplication();
		
		// if( $new_hwdms_path_media_files != '' && $app->getName() != 'administrator')
		// 	define('HWDMS_PATH_MEDIA_FILES', $new_hwdms_path_media_files.'/' );
	}

}
