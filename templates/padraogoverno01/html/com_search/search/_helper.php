<?php
/**
 * @package		
 * @subpackage	
 * @copyright	
 * @license		
 */

// no direct access
defined('_JEXEC') or die;

class TemplateSearchHelper {

	static function displaySearchPhrase() {  //TemplateSearchHelper::displaySearchPhrase()

		$searchphrases		= array();

		$searchphrases[]	= JHtml::_('select.option',  'all', JText::_('COM_SEARCH_ALL_WORDS'));
		$searchphrases[]	= JHtml::_('select.option',  'any', JText::_('COM_SEARCH_ANY_WORDS'));
		$searchphrases[]	= JHtml::_('select.option',  'exact', JText::_('COM_SEARCH_EXACT_PHRASE'));

		$input = JFactory::getApplication()->input;
		$match = $input->get('searchphrase', 'all', 'string');

		foreach($searchphrases as $k => $search)
		{
			?>
			<label class="radio">
				<input type="radio" name="searchphrase" id="searchphrase-id<?php echo $k ?>" value="<?php echo $search->value ?>" <?php if($match==$search->value): ?>checked="checked"<?php endif; ?>>
				<?php echo $search->text; ?>
			</label>
			<?php
		}		
	}

	static function displaySearchOnly( $searchareas = array() ) {
		foreach ($searchareas['search'] as $val => $txt):
			$checked = is_array($searchareas['active']) && in_array($val, $searchareas['active']) ? 'checked="checked"' : '';
			?>
			<label for="area-<?php echo $val;?>" class="checkbox">
				<input type="checkbox" name="areas[]" value="<?php echo $val;?>" id="area-<?php echo $val;?>" <?php echo $checked;?> />
				<?php echo JText::_($txt); ?>
			</label>
		<?php endforeach;
	}

}