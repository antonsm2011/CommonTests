﻿// Восстанавливает базу данных из dt
// Параметры
//  База - имя базы
//  ФайлВыгрузки

п = Вызвать ("_РаботаСКонфигурациями.СоздатьКомандуЗапуска.ПараметрыКомандыЗапуска");
п.Вставить ( "База", _.База);
п.Вставить ( "КлючевойПараметр", "/RestoreIB """ + _.ФайлВыгрузки + """");

команда = Вызвать ("_РаботаСКонфигурациями.СоздатьКомандуЗапуска", п );

Сообщить (команда);

ЗапуститьПриложение ( команда );
