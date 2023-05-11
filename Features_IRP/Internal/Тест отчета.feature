﻿#language: ru

@tree

Функционал: <Проверка отчета в части возвратов>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <Проверка D2001>
*Запуск и формирование отчета
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Дата начала'        | 'Дата окончания'      | 'Значение'   | 'Использование' | 'Параметр' |
		| '01.05.2023 0:00:00' | '31.05.2023 23:59:59' | 'Этот месяц' | 'Да'            | 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersStartDate"
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersStartDate' я ввожу текст '01.03.2023  0:00:00'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersEndDate"
	И в таблице "SettingsComposerSettingsDataParameters" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersEndDate' я ввожу текст '31.03.2023 23:59:59'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'
* Проверка выведеных значений
	И	я жду, что в табличном документе "Result" ячейка "R14C1" станет равна "Март 2021" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R14C2" станет равна "-2,000" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R14C3" станет равна "-680,00" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R14C4" станет равна "-566,66" в течение 2 секунд
*Открытие регистраторов
	Когда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R14C2"
	И в табличном документе 'Result' я делаю двойной клик на текущей ячейке
	Тогда открылось окно 'Выбор поля'
	И в таблице "Source" я перехожу к строке:
		| 'Доступные поля' |
		| 'Регистратор'    |
	И в таблице "Source" я выбираю текущую строку
	Тогда открылось окно 'D2001 Продажи (Расшифровка)'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"			
*Проверка регистраторов
	И	я жду, что в табличном документе "Result" ячейка "R7C1" станет равна "Возврат товаров от покупателя 1 от 02.03.2021 15:00:00" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R7C2" станет равна "-1,000" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R7C3" станет равна "-190,00" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R7C4" станет равна "-158,33" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R7C5" станет равна "" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R8C1" станет равна "Возврат от розничного покупателя 1 от 10.03.2021 14:00:00" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R8C2" станет равна "-1,000" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R8C3" станет равна "-490,00" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R8C4" станет равна "-408,33" в течение 2 секунд
	И	я жду, что в табличном документе "Result" ячейка "R8C5" станет равна "" в течение 2 секунд
				
			
		
