<?php
/**
 * @package		
 * @subpackage	
 * @copyright	
 * @license		
 */

// No direct access.
defined('_JEXEC') or die;

/**
 * 
 *
 * @since	
 */
function modChrome_empty($module, &$params, &$attribs)
{
	echo $module->content;
}

function modChrome_rowfluid_section01($module, &$params, &$attribs)
{
	$headerLevel = isset($attribs['headerLevel']) ? (int) $attribs['headerLevel'] : 2;
	$content = $module->content;
	if(! empty($content)):
	?>
	<div class="row-fluid">
		<section id="<?php echo $params->get('tag_id'); ?>"<?php if ($params->get('class_sfx', '')  != ''): ?> class="<?php echo $params->get('class_sfx'); ?>"<?php endif; ?>>
			<?php if ($module->showtitle): ?> 
			 <h<?php echo $headerLevel; ?> class="span2"><span><?php echo $module->title; ?></span></h<?php echo $headerLevel; ?>>
			<?php endif; ?>
			<?php echo $module->content; ?>
		</section>
	</div>
	<?php
	endif;
}

function modChrome_menu_sobre($module, &$params, &$attribs)
{
	$content = $module->content;
	if(! empty($content)):
	?>
	<nav<?php if ($params->get('class_sfx', '')  != ''): ?> class="<?php echo $params->get('class_sfx'); ?>"<?php endif; ?>>
        <h2 class="hide"><?php echo $module->title; ?></h2>
        <?php echo $module->content; ?>
    </nav>
	<?php
	endif;	
}

function modChrome_row01($module, &$params, &$attribs)
{
	$content = $module->content;
	if(! empty($content)):
	?>
	<div id="<?php echo $params->get('moduleclass_sfx'); ?>" class="row">
    	<h2 class="hidden"><?php echo $module->title; ?></h2>
    	<?php echo $module->content; ?>
    </div>
	<?php
	endif;	
}

function modChrome_hidden_titles($module, &$params, &$attribs)
{
	$content = $module->content;
	$headerLevel = isset($attribs['headerLevel']) ? (int) $attribs['headerLevel'] : 2;
	if(! empty($content)):
	?>
		<h<?php echo $headerLevel; ?> class="hide"><?php echo $module->title; ?></h<?php echo $headerLevel; ?>>
		<?php echo $module->content; ?>
	<?php
	endif;
}

function modChrome_nav_span($module, &$params, &$attribs)
{
	$content = $module->content;
	$headerLevel = isset($attribs['headerLevel']) ? (int) $attribs['headerLevel'] : 2;
	if(! empty($content)):
	?>
	<nav class="<?php echo $params->get('moduleclass_sfx'); ?> <?php echo $params->get('class_sfx', ''); ?>">
		<h<?php echo $headerLevel; ?> <?php if($params->get('moduleclass_sfx')=='menu-de-apoio'): ?>class="hide"<?php endif; ?>><?php echo $module->title; ?> <?php if($params->get('moduleclass_sfx')!='menu-de-apoio'): ?><i class="icon-chevron-down visible-phone visible-tablet pull-right"></i><?php endif; ?></h<?php echo $headerLevel; ?>>
		<?php echo $module->content; ?>
	</nav>
	<?php
	endif;
}

function modChrome_div_nav_rodape($module, &$params, &$attribs)
{
	$content = $module->content;
	$headerLevel = isset($attribs['headerLevel']) ? (int) $attribs['headerLevel'] : 2;
	if(! empty($content)):
	?>
	
		<div class="<?php echo $params->get('class_sfx', ''); ?>">		
			<nav class="row <?php echo $params->get('moduleclass_sfx'); ?> nav">
				<?php if ($module->showtitle): ?> 			
				<h<?php echo $headerLevel; ?>><?php echo $module->title; ?></h<?php echo $headerLevel; ?>>
				<?php endif; ?>
				<?php echo $module->content; ?>
			</nav>					
		</div>
	
	<?php
	endif;	
}