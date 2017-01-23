<?php
/**
 * 2015 Prestaworks AB.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to info@prestaworks.se so we can send you a copy immediately.
 *
 *  @author    Prestaworks AB <info@prestaworks.se>
 *  @copyright 2015 Prestaworks AB
 *  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of Prestaworks AB
 */
//localhost/prestashop/index.php?fc=module&module=captureleadsxavier&controller=newslettercaptureleads
class captureleadsxaviernewslettercaptureleadsModuleFrontController extends ModuleFrontController
{
    public $display_column_left = false;
    public $display_column_right = false;
    public $ssl = true;

    public function initContent()
    {
        parent::initContent();
        $this->context->smarty->assign(array(
            // There must be a way of populating getModuleLink from the controller without hardcoding it
            // (aside config values)
            'postURL' => $this->context->link->getModuleLInk("captureleadsxavier", "newslettercaptureleads")
        ));


        return $this->setTemplate('test.tpl');
    }


    public function postProcess()
    {
        if (Tools::isSubmit('submitCaptureleadsNewsletter'))
        {
            if (Tools::getValue('action') == '0')
            {
                // toDo: Clean input and check for values already in the table
                $sql = "INSERT INTO "._DB_PREFIX_."captureleadsxavier_newsletter (email) VALUES
                ('".pSQL(Tools::getValue('email'))."');";
                Db::getInstance()->execute($sql);
            }


            Tools::redirect(Configuration::get(__PS_BASE_URI__));
        }

    }
}
