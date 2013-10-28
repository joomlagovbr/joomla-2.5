<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_chamadas
 *
 * @copyright   Copyright (C) 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>
<?php if ($params->get('titulo_alternativo')): ?>
	<h3 class="page-header"><?php echo $params->get('titulo_alternativo')?></h3>
<?php endif; ?>

<?php if ($params->get('link_saiba_mais')): ?>
	<div>
		<a href="<?php echo $params->get('link_saiba_mais')?>">
			<?php if ($params->get('texto_saiba_mais')): ?>
				<?php echo $params->get('texto_saiba_mais')?>
			<?php else: ?>
				<?php echo JText::_('COM_CONTENT_FEED_READMORE'); ?>
			<?php endif;?>
		</a>	
	</div>
<?php endif; ?>
<div>
	<?php echo $params->get('mensagem_vazia'); ?>
</div>