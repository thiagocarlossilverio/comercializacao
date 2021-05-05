<?php

/**
 * Helper to generate a calendar.
 *
 * @category ViewHelpers
 * @package ZFUtil_View
 * @subpackage Helper
 * @author Jaime Neto <contato@jaimeneto.com>
 */
class TCS_View_Helpers_Calendar extends Zend_View_Helper_Abstract {

    protected $date;
    protected $now;
    protected $ignoreSelectedDate = false;
    protected $locale = 'pt_BR';

    const INSERT_BEFORE = -1;
    const INSERT_PREPEND = 0;
    const INSERT_APPEND = 1;
    const INSERT_AFTER = 2;

    protected $options = array(
        'showPrevMonthLink' => false,
        'showNextMonthLink' => false,
        'showOtherMonthDays' => false,
        'dateBaseUrl' => '#',
        'monthBaseUrl' => '#',
        'insertsPosition' => -1
    );
    protected $protectedCssClasses = array(
        'selected-date',
        'today',
        'past-day',
        'future-day',
        'other-mohth',
        'prev-month',
        'next-month'
    );
    protected $cssClasses = array();
    protected $inserts = array();
    static protected $formats = array(
        'input' => 'yyyy-MM-dd',
        'weekdays' => Zend_Date::WEEKDAY_NARROW,
        'header' => 'MMMM yyyy',
        'prevAndNextMonth' => Zend_Date::MONTH_NAME_SHORT
    );

    static public function getFormat($name) {
        return isset(self::$formats[$name]) ? self::$formats[$name] : null;
    }

    /**
     * Set object state from options array
     *
     * @param array $options
     * @return ZFUtil_View_Helper_Calendar
     */
    public function setOptions(array $options) {
        foreach ($options as $name => $value) {
            // Define o formato que a data será inserida
            if ($name == 'format') {
                self::$formats['input'] = $value;
            }

            // Define o idioma
            if ($name == 'locale' && Zend_Locale::isLocale($value)) {
                $this->locale = $value;
            }

            // Define as classes de css
            if ($name == 'cssClasses') {
                $this->setCssClasses($value);
            }

            // Insere conteúdo nas células de acordo com as datas
            if ($name == 'inserts') {
                $this->insertHtml($value);
            }

            // Define a posição em que o conteúdo será inserido
            if ($name == 'insertsPosition') {
                $this->setInsertsPosition($value);
            }

            $this->setOption($name, $value);
        }
        return $this;
    }

    /**
     * Altera alguma configuração do calendário
     *
     * @param string $name
     * @param mixed $value
     * @return ZFUtil_View_Helper_Calendar
     */
    public function setOption($name, $value) {
        if (isset($this->options[$name])) {
            $this->options[$name] = $value;
        }

        return $this;
    }

    /**
     * Retorna uma configuração pelo nome
     *
     * @param string $name
     * @return mixed
     */
    public function getOption($name) {
        return isset($this->options[$name]) ? $this->options[$name] : null;
    }

    /**
     * Define as classes de CSS para datas específicas
     *
     * @param array $cssClasses
     * @return ZFUtil_View_Helper_Calendar
     */
    public function setCssClasses(array $cssClasses) {
        foreach ($cssClasses as $cssClass => $dates) {
            $this->addCssClass($cssClass, $dates);
        }
        return $this;
    }

    /**
     * Adiciona uma classe de CSS para uma data específica
     *
     * @param string $cssClass
     * @param mixed $dates
     * @return ZFUtil_View_Helper_Calendar
     */
    public function addCssClass($cssClass, $dates) {
        if (!in_array($cssClass, $this->protectedCssClasses)) {
            if (is_string($dates)) {
                $dates = array($dates);
            }
            if (is_array($dates)) {
                foreach ($dates as $date) {
                    if (is_string($date) && Zend_Date::isDate(
                                    $date, $this->getFormat('input'))) {
                        $this->cssClasses[$cssClass][] = $date;
                    }
                }
            }
        }
        return $this;
    }

    /**
     * Retorna a lista de classes de css definidas
     *
     * @return array
     */
    public function getCssClasses() {
        return $this->cssClasses;
    }

    /**
     * Retorna todas as classes de css, tanto as padrão quanto
     * as definidas
     *
     * @return array
     */
    public function getAllCssClasses() {
        return array_merge($this->protectedCssClasses, array_keys($this->getCssClasses()));
    }

    /**
     * Adiciona conteúdo html a uma data específica
     *
     * @param string $date
     * @param string $html
     * @return ZFUtil_View_Helper_Calendar
     */
    public function insertHtml($date, $html = null) {
        if (is_array($date)) {
            foreach ($date as $d => $h) {
                $this->insertHtml($d, $h);
            }
        } else if (Zend_Date::isDate($date, $this->getFormat('input'))) {
            if (is_string($html)) {
                $this->inserts[$date][] = $html;
            } else if (is_array($html)) {
                foreach ($html as $h) {
                    if (is_string($h)) {
                        $this->inserts[$date][] = $h;
                    }
                }
            }
        }

        return $this;
    }

    /**
     * Retorna o conteúdo HTML adicionado para uma data específica
     *
     * @param string $date
     * @return array
     */
    public function getInserts($date = null) {
        if ($date) {
            if (isset($this->inserts[$date])) {
                return $this->inserts[$date];
            }
        } else {
            return $this->inserts;
        }
    }

    /**
     * Define a posição do conteúdo inserido nas datas
     * -1 = Antes da tag do link da data
     * 0 = Antes da data, dentro da tag do link
     * 1 = Depois da data, dentro da tag do link
     * 1 = Depois da tag do link da data
     *
     * @param int -1 = Before, 0 = Prepend, 1 = Append, 2 = After
     * @return ZFUtil_View_Helper_Calendar
     */
    public function setInsertsPosition($position) {
        if (in_array($position, array(self::INSERT_APPEND, self::INSERT_PREPEND))) {
            $this->setOption('insertsPosition', $position);
        }
        return $this;
    }

    /**
     * Returna a posição em que o conteúdo será inserido
     *
     * @return int
     */
    public function getInsertsPosition() {
        return $this->getOption('insertsPosition');
    }

    /**
     * Define a data selecionada
     *
     * @param string $date
     * @return ZFUtil_View_Helper_Calendar
     */
    public function setDate($date) {
        if ($date instanceof Zend_Date) {
            $this->date = $date;
        } else {
            if (!Zend_Date::isDate($date, self::getFormat('input'))) {
                $this->ignoreSelectedDate = true;
            }
            $this->date = new Zend_Date($date, self::getFormat('input'), $this->locale);
        }
        return $this;
    }

    /**
     * Exibe um calendário HTML
     *
     * @param string $date Data selecionada
     * @param array $options
     * @return string
     */
    public function calendar($date = null, array $options = null) {
        if ($options) {
            $this->setOptions($options);
        }

        $this->now = Zend_Date::now($this->locale);

        if ($date) {
            $this->setDate($date);
        } else {
            $this->date = clone $this->now;
        }

        return $this->render();
    }

    /**
     * Gera o código HTML do calendário
     *
     * @return string
     */
    public function render() {
        // Cria um objeto Zend_Date para a data inicial
        $dateInit = clone $this->date;
        $dateInit->setDay(1); // Altera para o primeiro dia do mês
        $weekday = $dateInit->get(Zend_Date::WEEKDAY_DIGIT);
        $month = $this->date->get(Zend_Date::MONTH);

        // Calcula o primeiro dia da tabela a ser exibido
        $firstDay = clone $dateInit->subDay($weekday);

        // Cria uma div para o calendário com um id único
        $xhtml = '<div class="calendar" '
                . 'id="calendar_' . $this->date->get('yyyy-MM') . '">'
                . '<div class="calendar-header">';

        // Verifica se o calendário está configurado para exibir os
        // links de navegação para exibir o mês anterior
        if ($this->getOption('showPrevMonthLink')) {
            $prevMonth = clone $this->date;

            // Cria um objeto para o mês anterior
            $prevMonth->subMonth(1);

            $xhtml .= '<span class="prev-month-link">'
                    . '<a href="'
                    . rtrim($this->getOption('monthBaseUrl'), '/') . '/'
                    . $prevMonth->get('yyyy-MM') . '" title="'
                    . $prevMonth->get(self::getFormat('header'))
                    . '">'
                    . $prevMonth->get(self::getFormat('prevAndNextMonth'))
                    . '</a></span>';
        }

        // Insere o nome do mês atual de acordo com o formato definido
        $xhtml .= '<span class="current-month">'
                . $this->date->get(self::getFormat('header'))
                . '</span>';

        // Verifica se o calendário está configurado para exibir os
        // links de navegação para exibir o mês seguinte
        if ($this->getOption('showNextMonthLink')) {
            $nextMonth = clone $this->date;

            // Cria um objeto para o mês seguinte
            $nextMonth->addMonth(1);

            $xhtml .= '<span class="next-month-link">'
                    . '<a href="'
                    . rtrim($this->getOption('monthBaseUrl'), '/') . '/'
                    . $nextMonth->get('yyyy-MM') . '" title="'
                    . $nextMonth->get(self::getFormat('header'))
                    . '">'
                    . $nextMonth->get(self::getFormat('prevAndNextMonth'))
                    . '</a></span>';
        }

        // Cria a tabela do calendário
        $xhtml .= '</div><table cellspacing="0" cellpadding="0" '
                . 'border="0"><thead>';

        $tmpDate = clone $firstDay;

        // Adiciona sete colunas com os nomes dos dias da semana
        for ($i = 0; $i <= 6; $i++) {
            $cssClasses = array();

            // Define as classes de CSS da semana e da coluna
            if ($i == 0) {
                // Classe CSS para a primeira coluna
                $cssClasses[] = 'column-first';
            } else if ($i == 6) {
                // Classe CSS para a última coluna
                $cssClasses[] = 'column-last';
            }

            // Adiciona classes CSS diferentes para dias da semana
            // e fim-de-semana
            $cssClasses[] = (in_array(
                            $tmpDate->get(Zend_Date::WEEKDAY_DIGIT), array(0, 6))) ? 'weekend-day' : 'week-day';

            // Adiciona uma classe específica para cada dia da semana
            $cssClasses[] = strtolower(
                    $tmpDate->get(Zend_Date::WEEKDAY_NAME, 'en_US'));

            // Insere as classes CSS na célula e imprime o dia da semana
            // de acordo com o formato definido
            $cssClassesString = $cssClasses ? ' class="' . implode(' ', $cssClasses) . '"' : '';

            $xhtml .= '<th' . $cssClassesString . '>'
                    . $tmpDate->get(self::getFormat('weekdays'))
                    . '</th>';

            // Avança para o dia seguinte e repete o processo
            $tmpDate->addDay(1);
        }
        $tmpDate = $firstDay;
        $xhtml .= '</thead><tbody>';

        // Cria sete linhas na tabela para as semanas
        for ($i = 0; $i < 6; $i++) {
            $xhtml .= '<tr>';

            // Cria sete colunas para as datas
            for ($j = 0; $j <= 6; $j++) {
                $day = $tmpDate->get(Zend_Date::DAY);

                $cssClasses = array();

                // Define as classes de CSS da semana e da coluna
                if ($j == 0) {
                    $cssClasses[] = 'column-first';
                } else if ($j == 6) {
                    $cssClasses[] = 'column-last';
                }

                // Adiciona classes CSS diferentes para dias da semana
                // e fim-de-semana
                $cssClasses[] = (in_array(
                                $tmpDate->get(Zend_Date::WEEKDAY_DIGIT), array(0, 6))) ? 'weekend-day' : 'week-day';

                //Adiciona uma classe específica para cada dia da semana
                $cssClasses[] = strtolower(
                        $tmpDate->get(Zend_Date::WEEKDAY_NAME, 'en_US'));

                // Adiciona classes CSS diferentes para hoje, dias
                //passados e futuros
                switch ($tmpDate->compareDate($this->now)) {
                    case -1: $cssClasses[] = 'past-day';
                        break;
                    case 0: $cssClasses[] = 'today';
                        break;
                    case 1: $cssClasses[] = 'future-day';
                        break;
                }

                // Adiciona uma classe CSS para a data selecionada
                if (!$this->ignoreSelectedDate && $tmpDate->compareDate($this->date) == 0) {
                    $cssClasses[] = 'selected-date';
                }

                // Adiciona classes CSS para dias de outros meses
                if ($tmpDate->get(Zend_Date::MONTH) != $month) {
                    $cssClasses[] = 'other-month';

                    if (!$this->getOption('showOtherMonthDays')) {
                        $day = '&nbsp;';
                    }

                    // Adiciona classes CSS diferentes para dias de
                    // meses passado e futuro
                    if ($tmpDate->get(Zend_Date::MONTH) < $month) {
                        $cssClasses[] = 'prev-month';
                    } else if ($tmpDate->get(Zend_Date::MONTH) > $month) {
                        $cssClasses[] = 'next-month';
                    }
                }

                // Insere classes CSS definidos para datas específicas
                $addCssClasses = $this->getCssClasses();
                if ($addCssClasses) {
                    foreach ($addCssClasses as $cssClass => $d) {
                        if ((is_string($d) && $tmpDate->get(
                                        $this->getFormat('input')) == $d) ||
                                (is_array($d) && in_array(
                                        $tmpDate->get($this->getFormat('input')), $d))) {
                            $cssClasses[] = $cssClass;
                        }
                    }
                }

                // Insere conteúdo HTML definido para datas específicas
                $htmlInserts = '';
                $inserts = $this->getInserts(
                        $tmpDate->get($this->getFormat('input')));
                if ($inserts) {
                    $htmlInserts .= '<div class="inserts">';
                    foreach ($inserts as $insert) {
                        $htmlInserts .= '<div>' . $insert . '</div>' . PHP_EOL;
                    }
                    $htmlInserts .= '</div>';
                }

                // Creia a célula da tabela para a data
                $xhtml .= '<td '
                        . 'id="calendar_day_'
                        . $tmpDate->get('yyyy-MM-dd') . '" '
                        . 'class="' . implode(' ', $cssClasses) . '">'
                        . ($this->getInsertsPosition() == self::INSERT_BEFORE ? $htmlInserts : '')
                        . '<a class="day" href="'
                        . rtrim($this->getOption('dateBaseUrl'), '/')
                        . '/'
                        . $tmpDate->get('yyyy-MM-dd')
                        . '">'
                        . ($this->getInsertsPosition() == self::INSERT_PREPEND ? $htmlInserts : '')
                        . $day
                        . ($this->getInsertsPosition() == self::INSERT_APPEND ? $htmlInserts : '')
                        . '</a>'
                        . ($this->getInsertsPosition() == self::INSERT_AFTER ? $htmlInserts : '')
                        . '</td>';

                $tmpDate->addDay(1);
            }
            $xhtml .= '</tr>';
        }

        $xhtml .= '</tbody></table></div>';

        return $xhtml;
    }

}
