<?php
/**
 * Zend Framework
 *
 * LICENSE
 *
 * This source file is subject to the new BSD license that is bundled
 * with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://framework.zend.com/license/new-bsd
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@zend.com so we can send you a copy immediately.
 *
 * @category   Zend
 * @package    Zend_Tag
 * @subpackage Item
 * @copyright  Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license    http://framework.zend.com/license/new-bsd     New BSD License
 * @version    $Id$
 */

/**
 * @category   Zend
 * @package    Zend_Tag
 * @copyright  Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license    http://framework.zend.com/license/new-bsd     New BSD License
 */
interface Zend_Tag_Taggable
{
    /**
     * Get the title of the tag
     *
     * @return string
     */
    public function getTitle();

    /**
     * Get the weight of the tag
     *
     * @return float
     */
    public function getWeight();

    /**
     * Set a parameter
     *
     * @param string $name
     * @param string $value
     */
    public function setParam($name, $value);

    /**
     * Get a parameter
     *
     * @param  string $name
     * @return mixed
     */
    public function getParam($name);
}
