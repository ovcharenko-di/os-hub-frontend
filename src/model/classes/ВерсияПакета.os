&Идентификатор
&ГенерируемоеЗначение
&Колонка(Тип = "Целое")
Перем Код Экспорт;

Перем Номер Экспорт;

Перем Пакет Экспорт;

&Колонка(Тип="Целое")
Перем ПакетКанала Экспорт;

&Колонка(Тип="Целое")
Перем Канал Экспорт;

Перем Путь Экспорт;

&Колонка(Тип = "ДатаВремя") 
Перем ДатаСоздания Экспорт;

&Колонка(Тип = "ДатаВремя") 
Перем ДатаОбновления Экспорт;

&ПодчиненнаяТаблица(Тип = "Массив", ТипЭлемента = "Зависимость")
Перем Зависимости Экспорт;

Перем пЗависимости;

&Сущность(ИмяТаблицы = "ВерсииПакетов")
Процедура ПриСозданииОбъекта()

КонецПроцедуры

Функция Зависимости() Экспорт

	Если пЗависимости = Неопределено Тогда
		пЗависимости = Новый Массив;
		Для Каждого ИдентификаторЗависимости Из Зависимости Цикл
			пЗависимости.Добавить(МенеджерБазыДанных.ЗависимостиМенеджер.ПолучитьОдно(ИдентификаторЗависимости));
		КонецЦикла;
	КонецЕсли;
	
	Возврат пЗависимости;

КонецФункции

Процедура Сохранить() Экспорт
	МенеджерБазыДанных.МенеджерСущностей.Сохранить(ЭтотОбъект);
КонецПроцедуры
