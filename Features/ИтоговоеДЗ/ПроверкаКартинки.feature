﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: <Проверка прикрепления файла картинки к номенклатуре>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <ПроверкаПрикрепленияКартинки>
*Открытие существующего элемента
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Главное' 'Товары'
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
	| 'Наименование'       |
	| 'Продукты' |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Код'       | 'Наименование' | 'Поставщик'           |
		| 'Kol67'   | '000000030' | 'Колбаса'      | 'Животноводство ООО ' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Колбаса (Товар)'
*Сброс картинки на всякий случай
	И я нажимаю кнопку очистить у поля с именем "ФайлКартинки"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
*Прикрепление к элементу картинки из списка	
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я перехожу к строке:
	| 'Код'       |
	| '000000017' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Колбаса (Товар) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Когда открылось окно 'Колбаса (Товар)'
* Проверяем что картинка прикрепилась	
	И Я закрываю окно 'Колбаса (Товар)'
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Код'       | 'Наименование' | 'Поставщик'           |
		| 'Kol67'   | '000000030' | 'Колбаса'      | 'Животноводство ООО ' |
	И в таблице "Список" я выбираю текущую строку	
	Тогда открылось окно 'Колбаса (Товар)'
	Тогда элемент формы с именем "ФайлКартинки" стал равен 'Бот.PNG'
* Завершение тестирования	
	И я закрываю все окна клиентского приложения




