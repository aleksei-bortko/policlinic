--


--
-- Описание для базы данных pclinic
--
DROP DATABASE IF EXISTS pclinic;
CREATE DATABASE pclinic
	CHARACTER SET utf8
	COLLATE utf8_general_ci;

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE pclinic;

--
-- Описание для таблицы current_report
--
CREATE TABLE current_report (
  id_c_r INT(11) NOT NULL AUTO_INCREMENT,
  cou_ TINYINT(4) DEFAULT NULL,
  ost TINYINT(4) DEFAULT NULL,
  date_ DATETIME DEFAULT NULL,
  id_d INT(11) DEFAULT NULL,
  doc VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id_c_r)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы current_report2
--
CREATE TABLE current_report2 (
  id_c_r2 INT(11) NOT NULL AUTO_INCREMENT,
  cou_ TINYINT(4) DEFAULT NULL,
  ost TINYINT(4) DEFAULT NULL,
  date_ DATETIME DEFAULT NULL,
  month_ INT(11) DEFAULT NULL,
  doc VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id_c_r2)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы patients
--
CREATE TABLE patients (
  id_patient INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код пациента',
  surname VARCHAR(255) DEFAULT NULL COMMENT 'Фамилия',
  name VARCHAR(255) DEFAULT NULL COMMENT 'Имя',
  lastname VARCHAR(255) DEFAULT NULL COMMENT 'Отчество',
  date_of_birth DATE NOT NULL COMMENT 'Дата рождения',
  phone VARCHAR(50) DEFAULT NULL COMMENT 'Адрес',
  address VARCHAR(255) DEFAULT NULL COMMENT 'Телефон',
  PRIMARY KEY (id_patient)
)
ENGINE = INNODB
AUTO_INCREMENT = 57
AVG_ROW_LENGTH = 292
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Пациенты';

--
-- Описание для таблицы s_diagnosis
--
CREATE TABLE s_diagnosis (
  id_diag INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код диагноза',
  diagnosis_name VARCHAR(100) DEFAULT NULL COMMENT 'Название диагноза',
  PRIMARY KEY (id_diag)
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Диагнозы';

--
-- Описание для таблицы s_positions
--
CREATE TABLE s_positions (
  id_position INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код должности',
  position_name VARCHAR(100) DEFAULT NULL COMMENT 'Название должности',
  salary INT(11) DEFAULT NULL COMMENT 'Размер оклада',
  PRIMARY KEY (id_position)
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Должности';

--
-- Описание для таблицы s_units
--
CREATE TABLE s_units (
  id_unit INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код отделения',
  unit VARCHAR(100) DEFAULT NULL COMMENT 'Отделение',
  PRIMARY KEY (id_unit)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Отделения';

--
-- Описание для таблицы users
--
CREATE TABLE users (
  id_user INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(100) DEFAULT NULL,
  password VARCHAR(255) DEFAULT NULL,
  fam VARCHAR(255) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  lastname VARCHAR(255) DEFAULT NULL,
  dolzh INT(11) DEFAULT NULL,
  admin TINYINT(1) DEFAULT 0,
  PRIMARY KEY (id_user)
)
ENGINE = INNODB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 2340
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы doctors
--
CREATE TABLE doctors (
  id_doctor INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код врача',
  surname VARCHAR(255) DEFAULT NULL COMMENT 'Фамилия',
  name VARCHAR(255) DEFAULT NULL COMMENT 'Имя',
  lastname VARCHAR(255) DEFAULT NULL COMMENT 'Отчество',
  date_on DATE DEFAULT NULL COMMENT 'Дата приема на работу',
  `position` INT(11) DEFAULT NULL COMMENT 'Должность',
  unit INT(11) DEFAULT NULL COMMENT 'Отделение',
  PRIMARY KEY (id_doctor),
  CONSTRAINT FK_doctors_s_positions_id_position FOREIGN KEY (`position`)
    REFERENCES s_positions(id_position) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_doctors_s_units_id_unit FOREIGN KEY (unit)
    REFERENCES s_units(id_unit) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Медперсонал-врачи';

--
-- Описание для таблицы patients_stat
--
CREATE TABLE patients_stat (
  id_pat_st INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код стационарного больного',
  patient INT(11) DEFAULT NULL COMMENT 'Код пациента',
  doctor INT(11) DEFAULT NULL COMMENT 'Код лечащего врача',
  diagnosis INT(11) DEFAULT NULL COMMENT 'Диагноз',
  date_on DATE DEFAULT NULL COMMENT 'Дата поступления в стационар',
  date_off DATE DEFAULT NULL COMMENT 'Дата выписки из стационара',
  period_days SMALLINT(6) DEFAULT NULL COMMENT 'Общий срок лечения (дней)',
  nurse_serv VARCHAR(255) DEFAULT NULL COMMENT 'Обслущивающая медсестра(ФИО)',
  PRIMARY KEY (id_pat_st),
  INDEX FK_patients_stat_doctors_id_doctor (doctor),
  CONSTRAINT FK_patients_stat_patients_id_patient FOREIGN KEY (patient)
    REFERENCES patients(id_patient) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_patients_stat_s_diagnosis_id_diag FOREIGN KEY (diagnosis)
    REFERENCES s_diagnosis(id_diag) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 431
AVG_ROW_LENGTH = 202
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Пациенты стационара';

--
-- Описание для таблицы sick_leave_certificates
--
CREATE TABLE sick_leave_certificates (
  id_slc INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Номер больничного листа',
  patient_name VARCHAR(255) DEFAULT NULL COMMENT 'ФИО пациента',
  diagnosis INT(11) DEFAULT NULL COMMENT 'Диагноз',
  date_begin DATE DEFAULT NULL COMMENT 'Дата открытия листа',
  date_end DATE DEFAULT NULL COMMENT 'Дата закрытия листа',
  doctor_name VARCHAR(255) DEFAULT NULL COMMENT 'ФИО лечащего врача',
  PRIMARY KEY (id_slc),
  CONSTRAINT FK_sick_leave_certificates_s_diagnosis_id_diag FOREIGN KEY (diagnosis)
    REFERENCES s_diagnosis(id_diag) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 72
AVG_ROW_LENGTH = 230
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Больничные листы';

--
-- Описание для таблицы examination_resoults
--
CREATE TABLE examination_resoults (
  id_exr INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код записи',
  patient INT(11) NOT NULL COMMENT 'Код пациента',
  date_ DATETIME DEFAULT NULL COMMENT 'Дата обращения (и время)',
  diagnosis INT(11) DEFAULT NULL COMMENT 'Поставленный диагноз',
  doctor INT(11) NOT NULL COMMENT 'Код лечащего врача',
  stat VARCHAR(255) DEFAULT NULL COMMENT 'Стационарное лечение',
  PRIMARY KEY (id_exr),
  CONSTRAINT FK_examination_resoults_doctors_id_doctor FOREIGN KEY (doctor)
    REFERENCES doctors(id_doctor) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_examination_resoults_patients_id_patient FOREIGN KEY (patient)
    REFERENCES patients(id_patient) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_examination_resoults_s_diagnosis_id_diag FOREIGN KEY (diagnosis)
    REFERENCES s_diagnosis(id_diag) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 422
AVG_ROW_LENGTH = 160
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Результаты обследования';

--
-- Описание для таблицы holiday
--
CREATE TABLE holiday (
  id_holiday INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Код отпуска',
  doctor INT(11) DEFAULT NULL COMMENT 'Код врача',
  date_begin DATE DEFAULT NULL COMMENT 'Дата начала отпуска',
  date_end DATE DEFAULT NULL COMMENT 'Дата окончания отпуска',
  PRIMARY KEY (id_holiday),
  CONSTRAINT FK_holiday_doctors_id_doctor FOREIGN KEY (doctor)
    REFERENCES doctors(id_doctor) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
COMMENT = 'Отпуска';

DELIMITER $$

--
-- Описание для процедуры add_or_updt_examination
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE add_or_updt_examination(IN patient_ INT, IN date__ DATETIME, IN diagnosis_ INT, IN doctor_ INT, IN stat_ VARCHAR(255), IN id_ex INT)
BEGIN
  IF id_ex = -1 THEN
  INSERT INTO pclinic.examination_resoults (patient, date_, diagnosis, doctor, stat) VALUES (patient_, date__, diagnosis_, doctor_, stat_);
ELSE
  UPDATE pclinic.examination_resoults
  SET 
    patient = patient_, date_ = date__, diagnosis = diagnosis_, doctor = doctor_, stat = stat_
  WHERE
    id_exr = id_ex;
END IF;
     end
$$

--
-- Описание для процедуры add_sick_leave
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE add_sick_leave(  patient_name_ VARCHAR(255) ,  diagnosis_ INT,  date_begin_ DATE ,  date_end_ DATE,  doctor_name_ VARCHAR(255) )
BEGIN
  insert INTO pclinic.sick_leave_certificates(patient_name,diagnosis,date_begin,date_end,doctor_name)VALUES
    (  patient_name_,  diagnosis_,  date_begin_,  date_end_,  doctor_name_);
  

END
$$

--
-- Описание для процедуры close_sick_leave_cert
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE close_sick_leave_cert(id_sick_leave_cert VARCHAR(255),
                                       date_end_     DATE                                       
                                        )
BEGIN
UPDATE pclinic.sick_leave_certificates
SET
  date_end = date_end_
WHERE
  id_slc = id_sick_leave_cert;


END
$$

--
-- Описание для процедуры get_columns
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE get_columns(IN table_name_ VARCHAR(50))
BEGIN
SELECT COLUMN_NAME as col
     , COLUMN_COMMENT as com
FROM
  information_schema.`COLUMNS`
WHERE
  TABLE_SCHEMA = 'pclinic'
  AND TABLE_NAME = table_name_;
END
$$

--
-- Описание для процедуры get_user_params
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE get_user_params(pas VARCHAR(255), log VARCHAR(255))
BEGIN
select concat(fam,' ',`name`,' ',lastname) as user_, admin  from  users where password=password(pas) and login=log;
END
$$

--
-- Описание для процедуры select1
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE select1(IN year_ SMALLINT)
BEGIN
-- -- число пац. (выпис) на стационар по месяцам
  SELECT get_monthname(month(date_off)) as mon
     , count(patient) as pat
FROM
  pclinic.patients_stat
WHERE
  year(date_off) = year(now()) - 1
GROUP BY
  (month(date_off));
END
$$

--
-- Описание для процедуры select2
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE select2(IN year_ SMALLINT)
BEGIN
-- -- конкретный пациент обследовался за последние 3 года, с датой и результатом
  SELECT patient
     , count(id_exr )
FROM
  pclinic.examination_resoults
WHERE
  year(date_) = year(now()) - 1
GROUP BY
  patient;
END
$$

--
-- Описание для процедуры select3
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE select3(IN `year` YEAR)
BEGIN
  -- сколько различных ст.пац. было у каждого вр. за год (даты диапазон указ)
  SELECT get_init(dd.surname,dd.name,dd.lastname) as doctor
     , count(DISTINCT patient) as par_d

-- patient
FROM
  pclinic.patients_stat pt
LEFT JOIN pclinic.doctors dd
ON dd.id_doctor = pt.doctor
WHERE
  year(date_off) = 2014
GROUP BY
  doctor;  
END
$$

--
-- Описание для процедуры select5
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE select5()
BEGIN
  -- обследовние по дням
  SELECT count(id_exr)
     , date(date_)
FROM
  pclinic.examination_resoults
WHERE
  date(date_)
-- between 
GROUP BY
  date(date_);
END
$$

--
-- Описание для процедуры select6
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE select6()
BEGIN
  -- в среднем поступивших в стац. в месяц
  -- в среднем обслед. в месяц

  SELECT round(avg(dd.pat)) `avg`
     , max(dd.pat) `max`
     , min(dd.pat) `min`
     , count(dd.pat) `count`
FROM
  (
  SELECT count(patient) AS pat
  FROM
    pclinic.patients_stat
  WHERE
    year(date_on) = 2014
  GROUP BY
    month(date_on)) dd;
END
$$

--
-- Описание для процедуры service_nurce
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE service_nurce( )
BEGIN
  -- у медички больных по месяцам стат (+у каждой)
  -- SET lc_time_names = 'en_EN';
 -- IF nurce = '' THEN
    SELECT nurse_serv
         , count(patient) AS count_patient
     --    , month(date_off) AS month_
         , 
     -- DATE_FORMAT(date_off,'%M') AS nm
          get_monthname(month(date_off)) AS nm
    FROM
      pclinic.patients_stat
    WHERE
      year(date_off) = 2014
    GROUP BY
      nm
    , nurse_serv
    ORDER BY
      nurse_serv
    , nm ASC;
  /*ELSE 
    SELECT 
      -- nurse_serv
      count(patient) AS count_patient
   --  , month(date_off) AS month_
     , -- DATE_FORMAT(date_off,'%M') AS nm
       monthname(date_off) AS nm
FROM
  pclinic.patients_stat
WHERE
  year(date_off) = 2014
  AND nurse_serv=nurce
GROUP BY
  nm
, nurse_serv
ORDER BY
 -- nurse_serv
  nm ASC;
  END IF;
*/
END
$$

--
-- Описание для процедуры update_cur_rep
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE update_cur_rep(    cur_month INT,
                                 OUT s         INT
                                 )
BEGIN DECLARE done, flag  BOOLEAN DEFAULT FALSE;
  DECLARE a, b        INT;
  DECLARE cur CURSOR FOR
  SELECT d.id_doctor
       , ifnull(ff.pat, 0) ppp
  FROM
    (
    SELECT p.doctor doc
         , p.date_on don
         , count(p.patient) pat
    FROM
      pclinic.patients_stat p
    WHERE
      year(p.date_on) = 2015
      AND month(p.date_on) = cur_month
    GROUP BY
      p.doctor) ff
  RIGHT JOIN pclinic.doctors d
  ON d.id_doctor = ff.doc;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
  DECLARE CONTINUE HANDLER FOR 1329
  SET done = TRUE;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
  END;

  SET a = NULL;
  SET b = NULL;
  SET done = FALSE;

  IF cur_month = 0 THEN
    SET cur_month = month(now());
  END IF;


  OPEN cur;

met:
  REPEAT
    FETCH cur INTO a, b;
    IF NOT done THEN
      UPDATE current_report
      SET
        cou_ = b, ost = 45 - b, date_ = curdate()
      WHERE
        id_d = a;
      SET flag = TRUE;
    END IF;
  UNTIL done
  END REPEAT;
  CLOSE cur;

END
$$

--
-- Описание для функции get_age
--
CREATE DEFINER = 'root'@'localhost'
FUNCTION get_age(date_of_birth DATE)
  RETURNS smallint(6)
BEGIN
  DECLARE res SMALLINT(6);
SET @curd := curdate();
  SET res := year(@curd) - year(date_of_birth)-1;
-- if not ( MONTH(date_of_birth) <= month(@curd) and  day(date_of_birth)<=day(@curd))  then 
 -- SET res=res-1;
  -- end if;
if  MONTH(date_of_birth) <= month(@curd) then 
  if day(date_of_birth)<=day(@curd) then SET res = res + 1;
    end if;
   end if;
RETURN res;
 
END
$$

--
-- Описание для функции get_age_format
--
CREATE DEFINER = 'root'@'localhost'
FUNCTION get_age_format(date_of_birth date)
  RETURNS varchar(15) CHARSET utf8
BEGIN
  declare res_str VARCHAR(15) DEFAULT '';
set @res:=(select get_age(date_of_birth));
  if @res>10 then
  set @res_a:=@res % 10  ; else set @res_a:=@res; end if;

if @res_a=1 then set res_str=' год'; else 
  if @res_a>1 and @res_a<5 then SET res_str = ' года'; 
else  SET res_str = ' лет';
end if;end if; 
RETURN (concat(@res,res_str));
END
$$

--
-- Описание для функции get_init
--
CREATE DEFINER = 'root'@'localhost'
FUNCTION get_init(fam VARCHAR(255), nam VARCHAR(255), othch VARCHAR(255))
  RETURNS varchar(255) CHARSET utf8
BEGIN
SET @res := concat(fam, ' ', substr(nam, 1, 1), '.', substr(othch, 1, 1), '.');

RETURN @res;
END
$$

--
-- Описание для функции get_monthname
--
CREATE DEFINER = 'root'@'localhost'
FUNCTION get_monthname(month_ TINYINT)
  RETURNS varchar(15) CHARSET utf8
BEGIN
  CASE month_
  WHEN 1 THEN
    RETURN 'Январь';
  WHEN 2 THEN
    RETURN 'Февраль';
  WHEN 3 THEN
    RETURN 'Март';
  WHEN 4 THEN
    RETURN 'Апрель';
  WHEN 5 THEN
    RETURN 'Май';
  WHEN 6 THEN
    RETURN 'Июнь';
  WHEN 7 THEN
    RETURN 'Июль';
  WHEN 8 THEN
    RETURN 'Август';
  WHEN 9 THEN
    RETURN 'Сентябрь';
  WHEN 10 THEN
    RETURN 'Октябрь';
  WHEN 11 THEN
    RETURN 'Ноябрь';
  WHEN 12 THEN
    RETURN 'Декабрь';

  ELSE
    RETURN 'Неизвестно';
  END CASE;



END
$$

DELIMITER ;

--
-- Описание для представления v_doctors
--
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW v_doctors
AS
	select `doc`.`id_doctor` AS `id_doctor`,`doc`.`surname` AS `surname`,`doc`.`name` AS `name`,`doc`.`lastname` AS `lastname`,`uu`.`unit` AS `unit`,`pp`.`position_name` AS `position_name`,`pp`.`salary` AS `salary`,`doc`.`date_on` AS `date_on` from ((`doctors` `doc` left join `s_positions` `pp` on((`pp`.`id_position` = `doc`.`position`))) left join `s_units` `uu` on((`uu`.`id_unit` = `doc`.`unit`))) order by `doc`.`surname`;

--
-- Описание для представления v_examination_resoults
--
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW v_examination_resoults
AS
	select `er`.`id_exr` AS `id_exr`,`get_init`(`p`.`surname`,`p`.`name`,`p`.`lastname`) AS `patien`,year(`p`.`date_of_birth`) AS `year_of_birth`,`get_age`(`p`.`date_of_birth`) AS `age`,`er`.`date_` AS `date_`,`sd`.`diagnosis_name` AS `diagnosis_name`,`d`.`surname` AS `id_doctor`,`er`.`stat` AS `stat` from (((`examination_resoults` `er` left join `s_diagnosis` `sd` on((`sd`.`id_diag` = `er`.`diagnosis`))) left join `patients` `p` on((`p`.`id_patient` = `er`.`patient`))) left join `doctors` `d` on((`d`.`id_doctor` = `er`.`doctor`)));

--
-- Описание для представления v_holidays
--
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW v_holidays
AS
	select `hh`.`id_holiday` AS `id_holiday`,concat(`dd`.`surname`,' ',`dd`.`name`,' ',`dd`.`lastname`) AS `doc`,`hh`.`date_begin` AS `date_begin`,`hh`.`date_end` AS `date_end` from (`holiday` `hh` left join `doctors` `dd` on((`dd`.`id_doctor` = `hh`.`doctor`)));

--
-- Описание для представления v_patients_stat
--
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW v_patients_stat
AS
	select `pst`.`id_pat_st` AS `id_pat_st`,concat(`pa`.`surname`,' ',`pa`.`name`,' ',`pa`.`lastname`) AS `patient`,year(`pa`.`date_of_birth`) AS `year_of_birth`,`get_init`(`doc`.`surname`,`doc`.`name`,`doc`.`lastname`) AS `doctor`,`di`.`diagnosis_name` AS `diagnos`,`pst`.`date_on` AS `date_on`,`pst`.`date_off` AS `date_off`,`pst`.`nurse_serv` AS `nurse_serv` from (((`patients_stat` `pst` left join `patients` `pa` on((`pa`.`id_patient` = `pst`.`patient`))) left join `doctors` `doc` on((`doc`.`id_doctor` = `pst`.`doctor`))) left join `s_diagnosis` `di` on((`di`.`id_diag` = `pst`.`diagnosis`)));

--
-- Описание для представления v_sick_leave_certificates
--
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW v_sick_leave_certificates
AS
	select `slc`.`id_slc` AS `id_slc`,`slc`.`patient_name` AS `patient_name`,`dd`.`diagnosis_name` AS `diagn`,`slc`.`date_begin` AS `date_begin`,`slc`.`date_end` AS `date_end`,((`slc`.`date_end` - `slc`.`date_begin`) + 1) AS `days`,`slc`.`doctor_name` AS `doctor_name` from (`sick_leave_certificates` `slc` left join `s_diagnosis` `dd` on((`dd`.`id_diag` = `slc`.`diagnosis`)));

-- 
-- Вывод данных для таблицы current_report
--
INSERT INTO current_report VALUES
(1, NULL, NULL, NULL, 4, '1'),
(2, NULL, NULL, NULL, 5, '1'),
(3, NULL, NULL, NULL, 3, '2'),
(4, NULL, NULL, NULL, 2, '2');

-- 
-- Вывод данных для таблицы current_report2
--
INSERT INTO current_report2 VALUES
(5, NULL, NULL, NULL, NULL, NULL);

-- 
-- Вывод данных для таблицы patients
--
INSERT INTO patients VALUES
(1, 'Пигус', 'Аркадий', 'Левович', '1982-08-31', '80292670051', 'г.Минск, ул.Ленина, 1 кв 1'),
(2, 'Иванов', 'Сергей', 'Эрнстович', '1951-10-11', '80292007865', 'г.Минск, ул.Ленина, 1 кв 2'),
(3, 'Иванов', 'Сергей', 'Эрнстович', '1951-10-11', '80292007865', 'г.Минск, ул.Ленина, 1 кв 3'),
(4, 'Проничев', 'Поликарп', 'Поликарпыч', '1979-08-21', '80296336874', 'г.Минск, ул.Ленина, 1 кв 4'),
(5, 'Гусляков', 'Лев', 'Ульянович', '1959-03-31', '80299636540', 'г.Минск, ул.Ленина, 1 кв 5'),
(6, 'Ивашевa', 'Оксана', 'Фомевна', '1971-06-14', '80292434833', 'г.Минск, ул.Ленина, 1 кв 6'),
(7, 'Турчанинов', 'Роман', 'Чеславович', '1950-06-28', '80293330892', 'г.Минск, ул.Ленина, 1 кв 7'),
(8, 'Муханов', 'Евстигней', 'Адрианович', '1990-07-03', '80294621508', 'г.Минск, ул.Ленина, 1 кв 8'),
(9, 'Марченко', 'Юлия', 'Елизаровна', '1963-05-06', '80291419971', 'г.Минск, ул.Ленина, 1 кв 9'),
(10, 'Мананниковa', 'Рада', 'Ираклиевна', '1975-05-02', '80295295526', 'г.Минск, ул.Ленина, 1 кв 10'),
(11, 'Коновалов', 'Пимен', 'Андриянович', '1983-07-24', '80291425516', 'г.Минск, ул.Ленина, 1 кв 11'),
(12, 'Живенков', 'Лев', 'Якубович', '1953-11-21', '80295292665', 'г.Минск, ул.Ленина, 1 кв 12'),
(13, 'Никишин', 'Юрий', 'Федотович', '1969-09-24', '80294837465', 'г.Минск, ул.Ленина, 1 кв 13'),
(14, 'Чучумашевa', 'Алиса', 'Святославовна', '1979-03-23', '80296709621', 'г.Минск, ул.Ленина, 1 кв 14'),
(15, 'Пончиков', 'Кирилл', 'Гордеевич', '1990-05-16', '80298935221', 'г.Минск, ул.Ленина, 1 кв 15'),
(16, 'Минеев', 'Евгений', 'Миронович', '1995-05-04', '80296536075', 'г.Минск, ул.Ленина, 1 кв 16'),
(17, 'Алифанов', 'Максим', 'Моисеевич', '1985-02-18', '80299632565', 'г.Минск, ул.Ленина, 1 кв 17'),
(18, 'Чичваркинa', 'Алина', 'Серафимовна', '1957-06-01', '80299632541', 'г.Минск, ул.Ленина, 1 кв 18'),
(19, 'Осинa', 'Ксения', 'Александровна', '1987-05-03', '80296818676', 'г.Минск, ул.Ленина, 1 кв 19'),
(20, 'Воеводинa', 'Дарья', 'Евгениевна', '1977-12-30', '80296044699', 'г.Минск, ул.Ленина, 1 кв 20'),
(21, 'Щерба', 'Влада', 'Анатолиевна', '1955-03-24', '80292216041', 'г.Минск, ул.Ленина, 1 кв 21'),
(22, 'Столяровa', 'Анна', 'Несторовна', '1986-03-22', '80296852700', 'г.Минск, ул.Ленина, 1 кв 22'),
(23, 'Стеблевa', 'Татьяна', 'Андрияновна', '1994-07-27', '80297850610', 'г.Минск, ул.Ленина, 1 кв 23'),
(24, 'Дементьевa', 'Светлана', 'Александровна', '1978-06-26', '80295599879', 'г.Минск, ул.Ленина, 1 кв 24'),
(25, 'Безродный', 'Евдокия', 'Елисеевна', '1975-11-03', '80291795471', 'г.Минск, ул.Ленина, 1 кв 25'),
(26, 'Кандаков', 'Юрий', 'Остапович', '1968-04-05', '80292837548', 'г.Минск, ул.Ленина, 1 кв 26'),
(27, 'Ефремовичa', 'Полина', 'Александровна', '1994-03-09', '80298335357', 'г.Минск, ул.Ленина, 1 кв 27'),
(28, 'Луньков', 'Вячеслав', 'Елизарович', '1977-07-25', '80294163176', 'г.Минск, ул.Ленина, 1 кв 28'),
(29, 'Ефремовичa', 'Полина', 'Александровна', '1994-03-09', '80298335357', 'г.Минск, ул.Ленина, 1 кв 29'),
(30, 'Луньков', 'Вячеслав', 'Елизарович', '1977-07-25', '80294163176', 'г.Минск, ул.Ленина, 1 кв 30'),
(31, 'Ефремовичa', 'Полина', 'Александровна', '1994-03-09', '80298335357', 'г.Минск, ул.Ленина, 1 кв 31'),
(32, 'Луньков', 'Вячеслав', 'Елизарович', '1977-07-25', '80294163176', 'г.Минск, ул.Ленина, 1 кв 32'),
(33, 'Чичваркинa', 'Ивана', 'Серафимовна', '1955-09-21', '80291094068', 'г.Минск, ул.Ленина, 1 кв 33'),
(34, 'Алифанов', 'Сергей', 'Моисеевич', '1955-03-27', '80291064068', 'г.Минск, ул.Ленина, 1 кв 34'),
(35, 'Ивашевa', 'Елена', 'Владимировна', '1967-08-28', '80295389835', 'г.Минск, ул.Ленина, 1 кв 35'),
(36, 'Гусляковский', 'Антон', 'Сергеевич', '1993-04-16', '80297867833', 'г.Минск, ул.Ленина, 1 кв 36'),
(37, 'Пронин', 'Потап', 'Потапович', '1954-12-17', '80292549805', 'г.Минск, ул.Ленина, 1 кв 37'),
(38, 'Иванов', 'Иван', 'Иванович', '1970-12-25', '80295571352', 'г.Минск, ул.Ленина, 1 кв 38'),
(39, 'Осиновская', 'Ксения', 'Юрьевна', '1951-06-14', '80299386733', 'г.Минск, ул.Ленина, 1 кв 39'),
(40, 'Богоявленский', 'Алексий', 'Венедиктович', '1971-08-08', '80292994258', 'г.Минск, ул.Ленина, 1 кв 40'),
(41, 'Воеводин', 'Дарий', 'Евгеньевич', '1953-01-12', '80299432684', 'г.Минск, ул.Ленина, 1 кв 41'),
(42, 'Щерба', 'Ольга', 'Антоновна', '1960-03-08', '80291124434', 'г.Минск, ул.Ленина, 1 кв 42'),
(43, 'Мацовкин', 'Никита', 'Платонович', '1976-10-15', '80292407023', 'г.Минск, ул.Ленина, 1 кв 43'),
(44, 'Енотов', 'Максим', 'Ефремович', '1995-05-05', '80294571551', 'г.Минск, ул.Ленина, 1 кв 44'),
(45, 'Ишеевa', 'Рената', 'Андрияновна', '1950-04-13', '80294097218', 'г.Минск, ул.Ленина, 1 кв 45'),
(46, 'Копцевa', 'Анна', 'Семеновна', '1952-12-07', '80299792060', 'г.Минск, ул.Ленина, 1 кв 46'),
(47, 'Весовой', 'Эрнест', 'Изяславович', '1962-01-14', '80295974795', 'г.Минск, ул.Ленина, 1 кв 47'),
(48, 'Махмудовa', 'Ирина', 'Петровна', '1986-02-19', '80297098232', 'г.Минск, ул.Ленина, 1 кв 48'),
(49, 'Юганцев', 'Виктор', 'Данилевич', '1983-11-01', '80299381344', 'г.Минск, ул.Ленина, 1 кв 49'),
(50, 'Полторакa', 'Евгения', 'Давидовна', '1955-08-04', '80292468440', 'г.Минск, ул.Ленина, 1 кв 50'),
(51, 'Варфоломеевa', 'Вероника', 'Ивановна', '1979-03-30', '80299455276', 'г.Минск, ул.Ленина, 1 кв 51'),
(52, 'Гуковский', 'Прохор', 'Ростиславович', '1991-04-05', '80296948917', 'г.Минск, ул.Ленина, 1 кв 52'),
(53, 'Грибалевa', 'Изабелла', 'Геннадиевна', '1960-01-13', '80292974509', 'г.Минск, ул.Ленина, 1 кв 53'),
(54, 'Карандашовa', 'Милена', 'Вячеславовна', '1974-08-07', '80295525569', 'г.Минск, ул.Ленина, 1 кв 54'),
(55, 'Минеев', 'Андрей', 'Миронович', '1985-12-07', '80295525569', 'г.Минск, ул.Ленина, 1 кв 55'),
(56, 'Богоявленский', 'Пимен', 'Венедиктович', '1960-09-19', '8029213442', 'г.Минск, ул.Ленина, 1 кв 56');

-- 
-- Вывод данных для таблицы s_diagnosis
--
INSERT INTO s_diagnosis VALUES
(1, 'Загиб среднего пальца левой ноги влево'),
(2, 'Экзема нижних слоев эпидермиса'),
(3, 'Аддикция верхних слоёв эпидермиса'),
(4, 'Гастрит легкий'),
(5, 'Отек среднего века'),
(6, 'гастрит'),
(7, 'Ангина');

-- 
-- Вывод данных для таблицы s_positions
--
INSERT INTO s_positions VALUES
(1, 'главный врач', 3000000),
(2, 'врач 1 кат.', 2000000),
(3, 'окулист 2 кат.', 1008000),
(4, 'окулист 1 кат.', 3008000),
(5, 'гастоинтеролог 2 кат.', 2200000),
(6, 'хирург 1 кат', 3000000),
(7, 'аукекке', 766575675);

-- 
-- Вывод данных для таблицы s_units
--
INSERT INTO s_units VALUES
(1, 'глазное'),
(2, 'соматическое'),
(3, 'хирургическое');

-- 
-- Вывод данных для таблицы users
--
INSERT INTO users VALUES
(8, 'root', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', 'Иванов', 'Иван', 'Иванович', NULL, 0),
(9, 'user', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', 'Петров', 'Петр', 'Петрович', NULL, 1);

-- 
-- Вывод данных для таблицы doctors
--
INSERT INTO doctors VALUES
(3, 'Коморовкий', 'Владимир', 'Анатольевич', '2008-05-02', 2, 1),
(4, 'Трышкина', 'Нана', 'Олеговна', '2013-05-11', 3, 2),
(5, 'Удова', 'Ада', 'Геннадьевна', '2010-05-08', 4, 1),
(6, 'Морская', 'Ламинария', 'Океановна', '2008-12-16', 5, 3),
(8, 'Иваненко', 'Виктор', 'Георгиевич', '2015-05-24', 5, 2);

-- 
-- Вывод данных для таблицы patients_stat
--
INSERT INTO patients_stat VALUES
(2, 2, 3, 2, '2014-03-30', '2014-04-08', 10, 'Петрова Сидора Ивановна'),
(3, 47, 4, 3, '2014-03-31', '2014-04-19', 20, 'Сидорова Петра Ивановна'),
(4, 54, 3, 4, '2014-04-01', '2014-04-06', 6, 'Иванова Ивана Сидоровна'),
(5, 41, 5, 1, '2014-04-02', '2014-04-20', 19, 'Иванова Алла Леонидовна'),
(6, 22, 3, 1, '2014-04-03', '2014-04-23', 21, 'Петрова Сидора Ивановна'),
(7, 25, 3, 1, '2014-04-03', '2014-04-06', 4, 'Сидорова Петра Ивановна'),
(8, 41, 5, 1, '2014-04-04', '2014-04-19', 16, 'Иванова Ивана Сидоровна'),
(9, 42, 4, 2, '2014-04-05', '2014-04-09', 5, 'Иванова Алла Леонидовна'),
(10, 46, 5, 2, '2014-04-06', '2014-04-26', 21, 'Петрова Сидора Ивановна'),
(11, 8, 4, 5, '2014-04-07', '2014-04-14', 8, 'Сидорова Петра Ивановна'),
(12, 23, 3, 5, '2014-04-07', '2014-04-21', 15, 'Иванова Ивана Сидоровна'),
(13, 35, 4, 2, '2014-04-08', '2014-04-11', 4, 'Иванова Алла Леонидовна'),
(14, 3, 5, 2, '2014-04-09', '2014-04-13', 5, 'Петрова Сидора Ивановна'),
(15, 35, 5, 5, '2014-04-10', '2014-04-15', 6, 'Сидорова Петра Ивановна'),
(16, 32, 4, 4, '2014-04-11', '2014-04-27', 17, 'Иванова Ивана Сидоровна'),
(17, 24, 4, 2, '2014-04-11', '2014-04-21', 11, 'Иванова Алла Леонидовна'),
(18, 11, 3, 3, '2014-04-12', '2014-04-20', 9, 'Петрова Сидора Ивановна'),
(19, 13, 6, 4, '2014-04-13', '2014-05-04', 22, 'Сидорова Петра Ивановна'),
(20, 41, 5, 1, '2014-04-14', '2014-04-20', 7, 'Иванова Ивана Сидоровна'),
(21, 32, 6, 2, '2014-04-15', '2014-04-24', 10, 'Иванова Алла Леонидовна'),
(22, 19, 5, 5, '2014-04-15', '2014-04-21', 7, 'Петрова Сидора Ивановна'),
(23, 50, 6, 1, '2014-04-16', '2014-04-28', 13, 'Сидорова Петра Ивановна'),
(24, 38, 3, 1, '2014-04-17', '2014-05-08', 22, 'Иванова Ивана Сидоровна'),
(25, 8, 4, 3, '2014-04-18', '2014-04-21', 4, 'Иванова Алла Леонидовна'),
(26, 24, 3, 4, '2014-04-19', '2014-04-25', 7, 'Петрова Сидора Ивановна'),
(27, 20, 6, 4, '2014-04-19', '2014-05-06', 18, 'Сидорова Петра Ивановна'),
(28, 40, 5, 5, '2014-04-20', '2014-05-01', 12, 'Иванова Ивана Сидоровна'),
(29, 36, 4, 1, '2014-04-21', '2014-05-05', 15, 'Иванова Алла Леонидовна'),
(30, 52, 6, 1, '2014-04-22', '2014-04-28', 7, 'Петрова Сидора Ивановна'),
(31, 10, 4, 3, '2014-04-23', '2014-05-09', 17, 'Сидорова Петра Ивановна'),
(32, 10, 4, 5, '2014-04-23', '2014-04-29', 7, 'Иванова Ивана Сидоровна'),
(33, 29, 4, 2, '2014-04-24', '2014-05-15', 22, 'Иванова Алла Леонидовна'),
(34, 39, 5, 4, '2014-04-25', '2014-04-30', 6, 'Петрова Сидора Ивановна'),
(35, 31, 4, 5, '2014-04-26', '2014-05-13', 18, 'Сидорова Петра Ивановна'),
(36, 27, 5, 5, '2014-04-27', '2014-04-30', 4, 'Иванова Ивана Сидоровна'),
(37, 34, 5, 1, '2014-04-27', '2014-05-15', 19, 'Иванова Алла Леонидовна'),
(38, 23, 4, 5, '2014-04-28', '2014-05-11', 14, 'Петрова Сидора Ивановна'),
(39, 46, 4, 2, '2014-04-29', '2014-05-08', 10, 'Сидорова Петра Ивановна'),
(40, 38, 5, 1, '2014-04-30', '2014-05-05', 6, 'Иванова Ивана Сидоровна'),
(41, 32, 4, 2, '2014-05-01', '2014-05-16', 16, 'Иванова Алла Леонидовна'),
(42, 56, 3, 2, '2014-05-01', '2014-05-06', 6, 'Петрова Сидора Ивановна'),
(43, 46, 5, 3, '2014-05-02', '2014-05-13', 12, 'Сидорова Петра Ивановна'),
(44, 51, 3, 1, '2014-05-03', '2014-05-23', 21, 'Иванова Ивана Сидоровна'),
(45, 17, 4, 5, '2014-05-04', '2014-05-22', 19, 'Иванова Алла Леонидовна'),
(46, 16, 4, 2, '2014-05-05', '2014-05-08', 4, 'Петрова Сидора Ивановна'),
(47, 4, 6, 1, '2014-05-05', '2014-05-25', 21, 'Сидорова Петра Ивановна'),
(48, 36, 5, 2, '2014-05-06', '2014-05-11', 6, 'Иванова Ивана Сидоровна'),
(49, 10, 4, 3, '2014-05-07', '2014-05-15', 9, 'Иванова Алла Леонидовна'),
(50, 26, 6, 4, '2014-05-08', '2014-05-27', 20, 'Петрова Сидора Ивановна'),
(51, 39, 4, 4, '2014-05-09', '2014-05-14', 6, 'Сидорова Петра Ивановна'),
(52, 11, 6, 1, '2014-05-09', '2014-05-24', 16, 'Иванова Ивана Сидоровна'),
(53, 11, 6, 5, '2014-05-10', '2014-05-21', 12, 'Иванова Алла Леонидовна'),
(54, 8, 6, 1, '2014-05-11', '2014-05-27', 17, 'Петрова Сидора Ивановна'),
(55, 10, 3, 5, '2014-05-12', '2014-05-25', 14, 'Сидорова Петра Ивановна'),
(56, 19, 4, 1, '2014-05-13', '2014-05-26', 14, 'Иванова Ивана Сидоровна'),
(57, 36, 5, 2, '2014-05-13', '2014-06-02', 21, 'Иванова Алла Леонидовна'),
(58, 15, 5, 4, '2014-05-14', '2014-05-22', 9, 'Петрова Сидора Ивановна'),
(59, 29, 6, 1, '2014-05-15', '2014-05-29', 15, 'Сидорова Петра Ивановна'),
(60, 15, 6, 2, '2014-05-16', '2014-05-25', 10, 'Иванова Ивана Сидоровна'),
(61, 35, 5, 2, '2014-05-17', '2014-05-30', 14, 'Иванова Алла Леонидовна'),
(62, 28, 4, 4, '2014-05-17', '2014-06-03', 18, 'Петрова Сидора Ивановна'),
(63, 14, 6, 1, '2014-05-18', '2014-06-07', 21, 'Сидорова Петра Ивановна'),
(64, 18, 5, 4, '2014-05-19', '2014-06-07', 20, 'Иванова Ивана Сидоровна'),
(65, 52, 4, 4, '2014-05-20', '2014-06-02', 14, 'Иванова Алла Леонидовна'),
(66, 28, 3, 4, '2014-05-21', '2014-05-29', 9, 'Петрова Сидора Ивановна'),
(67, 2, 3, 5, '2014-05-21', '2014-05-24', 4, 'Сидорова Петра Ивановна'),
(68, 9, 3, 5, '2014-05-22', '2014-05-26', 5, 'Иванова Ивана Сидоровна'),
(69, 41, 6, 2, '2014-05-23', '2014-06-07', 16, 'Иванова Алла Леонидовна'),
(70, 10, 4, 1, '2014-05-24', '2014-06-04', 12, 'Петрова Сидора Ивановна'),
(71, 13, 5, 2, '2014-05-25', '2014-06-03', 10, 'Сидорова Петра Ивановна'),
(72, 38, 4, 2, '2014-05-25', '2014-06-01', 8, 'Иванова Ивана Сидоровна'),
(73, 28, 4, 3, '2014-05-26', '2014-06-06', 12, 'Иванова Алла Леонидовна'),
(74, 20, 6, 4, '2014-05-27', '2014-06-09', 14, 'Петрова Сидора Ивановна'),
(75, 6, 4, 2, '2014-05-28', '2014-05-31', 4, 'Сидорова Петра Ивановна'),
(76, 1, 3, 3, '2014-05-29', '2014-06-12', 15, 'Иванова Ивана Сидоровна'),
(77, 51, 6, 3, '2014-05-29', '2014-06-01', 4, 'Иванова Алла Леонидовна'),
(78, 10, 4, 4, '2014-05-30', '2014-06-12', 14, 'Петрова Сидора Ивановна'),
(79, 49, 5, 3, '2014-05-31', '2014-06-07', 8, 'Сидорова Петра Ивановна'),
(80, 2, 5, 1, '2014-06-01', '2014-06-07', 7, 'Иванова Ивана Сидоровна'),
(81, 53, 6, 1, '2014-06-02', '2014-06-05', 4, 'Иванова Ивана Сидоровна'),
(82, 1, 6, 2, '2014-06-02', '2014-06-23', 22, 'Иванова Ивана Сидоровна'),
(83, 40, 3, 3, '2014-06-03', '2014-06-10', 8, 'Иванова Ивана Сидоровна'),
(84, 15, 3, 4, '2014-06-04', '2014-06-15', 12, 'Иванова Ивана Сидоровна'),
(85, 24, 5, 2, '2014-06-05', '2014-06-11', 7, 'Иванова Ивана Сидоровна'),
(86, 36, 6, 5, '2014-06-06', '2014-06-15', 10, 'Иванова Ивана Сидоровна'),
(87, 4, 6, 5, '2014-06-06', '2014-06-22', 17, 'Иванова Ивана Сидоровна'),
(88, 56, 6, 3, '2014-06-07', '2014-06-25', 19, 'Иванова Ивана Сидоровна'),
(89, 40, 6, 1, '2014-06-08', '2014-06-19', 12, 'Иванова Ивана Сидоровна'),
(90, 23, 5, 1, '2014-06-09', '2014-06-24', 16, 'Иванова Ивана Сидоровна'),
(91, 33, 3, 1, '2014-06-10', '2014-06-25', 16, 'Иванова Алла Леонидовна'),
(92, 6, 6, 5, '2014-06-10', '2014-06-20', 11, 'Иванова Алла Леонидовна'),
(93, 43, 6, 2, '2014-06-11', '2014-06-20', 10, 'Иванова Ивана Сидоровна'),
(94, 54, 5, 1, '2014-06-12', '2014-07-03', 22, 'Иванова Ивана Сидоровна'),
(95, 54, 5, 5, '2014-06-13', '2014-06-27', 15, 'Иванова Ивана Сидоровна'),
(96, 8, 4, 2, '2014-06-14', '2014-06-24', 11, 'Иванова Ивана Сидоровна'),
(97, 4, 3, 4, '2014-06-14', '2014-06-22', 9, 'Иванова Ивана Сидоровна'),
(98, 7, 6, 1, '2014-06-15', '2014-07-06', 22, 'Иванова Ивана Сидоровна'),
(99, 33, 3, 2, '2014-06-16', '2014-06-23', 8, 'Иванова Ивана Сидоровна'),
(100, 33, 3, 3, '2014-06-17', '2014-06-28', 12, 'Иванова Ивана Сидоровна'),
(101, 25, 3, 3, '2014-06-18', '2014-07-04', 17, 'Иванова Ивана Сидоровна'),
(102, 47, 6, 1, '2014-06-18', '2014-07-09', 22, 'Иванова Ивана Сидоровна'),
(103, 38, 6, 4, '2014-06-19', '2014-07-04', 16, 'Иванова Ивана Сидоровна'),
(104, 23, 5, 5, '2014-06-20', '2014-07-06', 17, 'Иванова Ивана Сидоровна'),
(105, 52, 6, 4, '2014-06-21', '2014-07-12', 22, 'Иванова Ивана Сидоровна'),
(106, 34, 6, 2, '2014-06-22', '2014-06-30', 9, 'Иванова Ивана Сидоровна'),
(107, 53, 3, 4, '2014-06-22', '2014-07-11', 20, 'Иванова Ивана Сидоровна'),
(108, 3, 6, 1, '2014-06-23', '2014-07-07', 15, 'Иванова Ивана Сидоровна'),
(109, 38, 3, 1, '2014-06-24', '2014-06-27', 4, 'Иванова Ивана Сидоровна'),
(110, 48, 3, 1, '2014-06-25', '2014-06-30', 6, 'Иванова Ивана Сидоровна'),
(111, 47, 5, 4, '2014-06-26', '2014-07-03', 8, 'Иванова Ивана Сидоровна'),
(112, 48, 3, 2, '2014-06-26', '2014-07-03', 8, 'Иванова Алла Леонидовна'),
(113, 38, 3, 2, '2014-06-27', '2014-07-11', 15, 'Иванова Алла Леонидовна'),
(114, 56, 4, 3, '2014-06-28', '2014-07-12', 15, 'Иванова Алла Леонидовна'),
(115, 9, 4, 3, '2014-06-29', '2014-07-13', 15, 'Иванова Алла Леонидовна'),
(116, 44, 4, 3, '2014-06-30', '2014-07-10', 11, 'Петрова Сидора Ивановна'),
(117, 12, 4, 3, '2014-06-30', '2014-07-21', 22, 'Петрова Сидора Ивановна'),
(118, 49, 5, 1, '2014-07-01', '2014-07-11', 11, 'Петрова Сидора Ивановна'),
(119, 19, 6, 5, '2014-07-02', '2014-07-12', 11, 'Иванова Ивана Сидоровна'),
(120, 13, 4, 2, '2014-07-03', '2014-07-06', 4, 'Иванова Алла Леонидовна'),
(121, 54, 5, 3, '2014-07-04', '2014-07-24', 21, 'Петрова Сидора Ивановна'),
(122, 29, 5, 4, '2014-07-04', '2014-07-20', 17, 'Сидорова Петра Ивановна'),
(123, 5, 6, 2, '2014-07-05', '2014-07-26', 22, 'Иванова Ивана Сидоровна'),
(124, 16, 4, 1, '2014-07-06', '2014-07-10', 5, 'Иванова Алла Леонидовна'),
(125, 48, 6, 1, '2014-07-07', '2014-07-27', 21, 'Петрова Сидора Ивановна'),
(126, 10, 3, 2, '2014-07-08', '2014-07-15', 8, 'Сидорова Петра Ивановна'),
(127, 15, 5, 2, '2014-07-08', '2014-07-27', 20, 'Иванова Ивана Сидоровна'),
(128, 36, 4, 1, '2014-07-09', '2014-07-28', 20, 'Иванова Алла Леонидовна'),
(129, 21, 3, 1, '2014-07-10', '2014-07-15', 6, 'Петрова Сидора Ивановна'),
(130, 52, 3, 5, '2014-07-11', '2014-07-30', 20, 'Сидорова Петра Ивановна'),
(131, 10, 4, 5, '2014-07-12', '2014-07-19', 8, 'Иванова Ивана Сидоровна'),
(132, 37, 4, 1, '2014-07-12', '2014-07-23', 12, 'Иванова Алла Леонидовна'),
(133, 53, 5, 4, '2014-07-13', '2014-07-17', 5, 'Петрова Сидора Ивановна'),
(134, 38, 5, 5, '2014-07-14', '2014-07-28', 15, 'Сидорова Петра Ивановна'),
(135, 8, 4, 2, '2014-07-15', '2014-08-01', 18, 'Иванова Ивана Сидоровна'),
(136, 37, 6, 3, '2014-07-16', '2014-07-22', 7, 'Иванова Алла Леонидовна'),
(137, 17, 3, 5, '2014-07-16', '2014-07-24', 9, 'Петрова Сидора Ивановна'),
(138, 47, 6, 1, '2014-07-17', '2014-07-30', 14, 'Сидорова Петра Ивановна'),
(139, 55, 3, 2, '2014-07-18', '2014-08-05', 19, 'Иванова Ивана Сидоровна'),
(140, 28, 4, 2, '2014-07-19', '2014-08-03', 16, 'Иванова Алла Леонидовна'),
(141, 5, 5, 2, '2014-07-20', '2014-08-03', 15, 'Петрова Сидора Ивановна'),
(142, 55, 5, 3, '2014-07-20', '2014-08-04', 16, 'Сидорова Петра Ивановна'),
(143, 46, 3, 3, '2014-07-21', '2014-07-31', 11, 'Иванова Ивана Сидоровна'),
(144, 31, 6, 1, '2014-07-22', '2014-07-28', 7, 'Иванова Алла Леонидовна'),
(145, 49, 5, 4, '2014-07-23', '2014-07-26', 4, 'Петрова Сидора Ивановна'),
(146, 4, 5, 5, '2014-07-24', '2014-07-30', 7, 'Сидорова Петра Ивановна'),
(147, 2, 4, 4, '2014-07-24', '2014-07-28', 5, 'Иванова Ивана Сидоровна'),
(148, 22, 5, 3, '2014-07-25', '2014-07-31', 7, 'Иванова Алла Леонидовна'),
(149, 55, 3, 5, '2014-07-26', '2014-07-29', 4, 'Петрова Сидора Ивановна'),
(150, 23, 6, 3, '2014-07-27', '2014-08-12', 17, 'Сидорова Петра Ивановна'),
(151, 11, 3, 2, '2014-07-28', '2014-08-09', 13, 'Иванова Ивана Сидоровна'),
(152, 45, 4, 2, '2014-07-28', '2014-08-16', 20, 'Иванова Алла Леонидовна'),
(153, 39, 4, 5, '2014-07-29', '2014-08-08', 11, 'Петрова Сидора Ивановна'),
(154, 17, 4, 4, '2014-07-30', '2014-08-14', 16, 'Сидорова Петра Ивановна'),
(155, 1, 6, 2, '2014-07-31', '2014-08-03', 4, 'Иванова Ивана Сидоровна'),
(156, 7, 6, 2, '2014-08-01', '2014-08-11', 11, 'Иванова Алла Леонидовна'),
(157, 24, 3, 4, '2014-08-01', '2014-08-09', 9, 'Петрова Сидора Ивановна'),
(158, 16, 5, 4, '2014-08-02', '2014-08-12', 11, 'Сидорова Петра Ивановна'),
(159, 46, 6, 2, '2014-08-03', '2014-08-11', 9, 'Иванова Ивана Сидоровна'),
(160, 30, 3, 4, '2014-08-04', '2014-08-20', 17, 'Иванова Алла Леонидовна'),
(161, 29, 4, 1, '2014-08-05', '2014-08-17', 13, 'Петрова Сидора Ивановна'),
(162, 34, 3, 2, '2014-08-05', '2014-08-16', 12, 'Сидорова Петра Ивановна'),
(163, 3, 6, 1, '2014-08-06', '2014-08-14', 9, 'Иванова Ивана Сидоровна'),
(164, 39, 6, 4, '2014-08-07', '2014-08-25', 19, 'Иванова Алла Леонидовна'),
(165, 13, 6, 3, '2014-08-08', '2014-08-29', 22, 'Петрова Сидора Ивановна'),
(166, 56, 6, 3, '2014-08-09', '2014-08-15', 7, 'Сидорова Петра Ивановна'),
(167, 25, 4, 2, '2014-08-09', '2014-08-15', 7, 'Иванова Ивана Сидоровна'),
(168, 31, 3, 4, '2014-08-10', '2014-08-17', 8, 'Иванова Алла Леонидовна'),
(169, 30, 5, 3, '2014-08-11', '2014-08-18', 8, 'Петрова Сидора Ивановна'),
(170, 52, 6, 3, '2014-08-12', '2014-08-16', 5, 'Сидорова Петра Ивановна'),
(171, 18, 5, 5, '2014-08-13', '2014-08-19', 7, 'Иванова Ивана Сидоровна'),
(172, 53, 5, 2, '2014-08-13', '2014-09-03', 22, 'Иванова Алла Леонидовна'),
(173, 29, 3, 1, '2014-08-14', '2014-08-25', 12, 'Петрова Сидора Ивановна'),
(174, 29, 6, 2, '2014-08-15', '2014-08-22', 8, 'Сидорова Петра Ивановна'),
(175, 16, 5, 2, '2014-08-16', '2014-08-31', 16, 'Иванова Ивана Сидоровна'),
(176, 51, 5, 1, '2014-08-17', '2014-09-03', 18, 'Иванова Ивана Сидоровна'),
(177, 2, 5, 4, '2014-08-17', '2014-08-31', 15, 'Иванова Ивана Сидоровна'),
(178, 36, 6, 2, '2014-08-18', '2014-08-28', 11, 'Иванова Ивана Сидоровна'),
(179, 9, 4, 5, '2014-08-19', '2014-09-08', 21, 'Иванова Ивана Сидоровна'),
(180, 38, 3, 3, '2014-08-20', '2014-09-09', 21, 'Иванова Ивана Сидоровна'),
(181, 9, 6, 5, '2014-08-21', '2014-09-06', 17, 'Иванова Ивана Сидоровна'),
(182, 40, 3, 3, '2014-08-21', '2014-08-27', 7, 'Иванова Ивана Сидоровна'),
(183, 55, 6, 5, '2014-08-22', '2014-09-05', 15, 'Иванова Ивана Сидоровна'),
(184, 20, 5, 2, '2014-08-23', '2014-09-04', 13, 'Иванова Ивана Сидоровна'),
(185, 5, 6, 5, '2014-08-24', '2014-08-29', 6, 'Иванова Ивана Сидоровна'),
(186, 17, 3, 4, '2014-08-25', '2014-09-08', 15, 'Иванова Алла Леонидовна'),
(187, 38, 3, 5, '2014-08-25', '2014-09-12', 19, 'Иванова Алла Леонидовна'),
(188, 9, 5, 4, '2014-08-26', '2014-08-29', 4, 'Иванова Ивана Сидоровна'),
(189, 28, 3, 3, '2014-08-27', '2014-09-11', 16, 'Иванова Ивана Сидоровна'),
(190, 34, 5, 2, '2014-08-28', '2014-09-01', 5, 'Иванова Ивана Сидоровна'),
(191, 38, 4, 2, '2014-08-29', '2014-09-05', 8, 'Иванова Ивана Сидоровна'),
(192, 15, 6, 3, '2014-08-29', '2014-09-03', 6, 'Иванова Ивана Сидоровна'),
(193, 46, 3, 1, '2014-08-30', '2014-09-06', 8, 'Иванова Ивана Сидоровна'),
(194, 34, 4, 2, '2014-08-31', '2014-09-20', 21, 'Иванова Ивана Сидоровна'),
(195, 7, 4, 3, '2014-09-01', '2014-09-07', 7, 'Иванова Ивана Сидоровна'),
(196, 2, 6, 4, '2014-09-02', '2014-09-10', 9, 'Иванова Ивана Сидоровна'),
(197, 28, 5, 2, '2014-09-02', '2014-09-19', 18, 'Иванова Ивана Сидоровна'),
(198, 30, 4, 2, '2014-09-03', '2014-09-21', 19, 'Иванова Ивана Сидоровна'),
(199, 27, 3, 4, '2014-09-04', '2014-09-22', 19, 'Иванова Ивана Сидоровна'),
(200, 21, 4, 4, '2014-09-05', '2014-09-08', 4, 'Иванова Ивана Сидоровна'),
(201, 56, 4, 5, '2014-09-06', '2014-09-25', 20, 'Иванова Ивана Сидоровна'),
(202, 56, 5, 3, '2014-09-06', '2014-09-23', 18, 'Иванова Ивана Сидоровна'),
(203, 24, 3, 2, '2014-09-07', '2014-09-25', 19, 'Иванова Ивана Сидоровна'),
(204, 15, 5, 3, '2014-09-08', '2014-09-21', 14, 'Иванова Ивана Сидоровна'),
(205, 47, 5, 3, '2014-09-09', '2014-09-12', 4, 'Иванова Ивана Сидоровна'),
(206, 12, 6, 3, '2014-09-10', '2014-09-26', 17, 'Иванова Ивана Сидоровна'),
(207, 29, 3, 4, '2014-09-10', '2014-09-20', 11, 'Иванова Алла Леонидовна'),
(208, 21, 6, 4, '2014-09-11', '2014-09-22', 12, 'Иванова Алла Леонидовна'),
(209, 54, 3, 5, '2014-09-12', '2014-09-16', 5, 'Иванова Алла Леонидовна'),
(210, 24, 6, 1, '2014-09-13', '2014-09-17', 5, 'Иванова Алла Леонидовна'),
(211, 18, 4, 1, '2014-09-14', '2014-10-04', 21, 'Петрова Сидора Ивановна'),
(212, 51, 3, 1, '2014-09-14', '2014-09-28', 15, 'Петрова Сидора Ивановна'),
(213, 30, 6, 2, '2014-09-15', '2014-09-21', 7, 'Петрова Сидора Ивановна'),
(214, 3, 4, 3, '2014-09-16', '2014-09-22', 7, 'Иванова Ивана Сидоровна'),
(215, 7, 3, 1, '2014-09-17', '2014-10-07', 21, 'Иванова Алла Леонидовна'),
(216, 50, 6, 2, '2014-09-18', '2014-09-23', 6, 'Петрова Сидора Ивановна'),
(217, 36, 3, 2, '2014-09-18', '2014-09-27', 10, 'Сидорова Петра Ивановна'),
(218, 6, 5, 3, '2014-09-19', '2014-10-03', 15, 'Иванова Ивана Сидоровна'),
(219, 36, 5, 1, '2014-09-20', '2014-10-04', 15, 'Иванова Алла Леонидовна'),
(220, 8, 6, 1, '2014-09-21', '2014-10-08', 18, 'Петрова Сидора Ивановна'),
(221, 51, 5, 5, '2014-09-22', '2014-10-08', 17, 'Сидорова Петра Ивановна'),
(222, 14, 3, 2, '2014-09-22', '2014-10-05', 14, 'Иванова Ивана Сидоровна'),
(223, 11, 4, 1, '2014-09-23', '2014-10-04', 12, 'Иванова Алла Леонидовна'),
(224, 56, 5, 3, '2014-09-24', '2014-10-08', 15, 'Петрова Сидора Ивановна'),
(225, 27, 4, 2, '2014-09-25', '2014-10-11', 17, 'Сидорова Петра Ивановна'),
(226, 32, 4, 2, '2014-09-26', '2014-09-30', 5, 'Иванова Ивана Сидоровна'),
(227, 28, 6, 5, '2014-09-26', '2014-10-01', 6, 'Иванова Алла Леонидовна'),
(228, 50, 3, 5, '2014-09-27', '2014-10-15', 19, 'Петрова Сидора Ивановна'),
(229, 54, 6, 3, '2014-09-28', '2014-10-15', 18, 'Сидорова Петра Ивановна'),
(230, 34, 4, 3, '2014-09-29', '2014-10-08', 10, 'Иванова Ивана Сидоровна'),
(231, 8, 5, 2, '2014-09-30', '2014-10-21', 22, 'Иванова Алла Леонидовна'),
(232, 37, 3, 1, '2014-09-30', '2014-10-11', 12, 'Петрова Сидора Ивановна'),
(233, 6, 4, 3, '2014-10-01', '2014-10-12', 12, 'Сидорова Петра Ивановна'),
(234, 35, 6, 4, '2014-10-02', '2014-10-22', 21, 'Иванова Ивана Сидоровна'),
(235, 26, 3, 1, '2014-10-03', '2014-10-18', 16, 'Иванова Алла Леонидовна'),
(236, 33, 3, 2, '2014-10-04', '2014-10-11', 8, 'Петрова Сидора Ивановна'),
(237, 26, 5, 4, '2014-10-04', '2014-10-15', 12, 'Сидорова Петра Ивановна'),
(238, 7, 4, 1, '2014-10-05', '2014-10-14', 10, 'Иванова Ивана Сидоровна'),
(239, 43, 4, 3, '2014-10-06', '2014-10-23', 18, 'Иванова Алла Леонидовна'),
(240, 35, 6, 4, '2014-10-07', '2014-10-16', 10, 'Петрова Сидора Ивановна'),
(241, 4, 6, 4, '2014-10-08', '2014-10-21', 14, 'Сидорова Петра Ивановна'),
(242, 8, 5, 3, '2014-10-08', '2014-10-29', 22, 'Иванова Ивана Сидоровна'),
(243, 7, 4, 1, '2014-10-09', '2014-10-22', 14, 'Иванова Алла Леонидовна'),
(244, 8, 5, 3, '2014-10-10', '2014-10-26', 17, 'Петрова Сидора Ивановна'),
(245, 15, 5, 1, '2014-10-11', '2014-10-22', 12, 'Сидорова Петра Ивановна'),
(246, 48, 3, 4, '2014-10-12', '2014-10-29', 18, 'Иванова Ивана Сидоровна'),
(247, 13, 6, 2, '2014-10-12', '2014-11-02', 22, 'Иванова Алла Леонидовна'),
(248, 33, 6, 4, '2014-10-13', '2014-10-28', 16, 'Петрова Сидора Ивановна'),
(249, 8, 5, 5, '2014-10-14', '2014-10-26', 13, 'Сидорова Петра Ивановна'),
(250, 32, 5, 3, '2014-10-15', '2014-10-29', 15, 'Иванова Ивана Сидоровна'),
(251, 40, 4, 5, '2014-10-16', '2014-10-29', 14, 'Иванова Алла Леонидовна'),
(252, 39, 3, 4, '2014-10-16', '2014-10-22', 7, 'Петрова Сидора Ивановна'),
(253, 50, 3, 1, '2014-10-17', '2014-10-26', 10, 'Сидорова Петра Ивановна'),
(254, 17, 5, 1, '2014-10-18', '2014-10-31', 14, 'Иванова Ивана Сидоровна'),
(255, 52, 4, 5, '2014-10-19', '2014-10-27', 9, 'Иванова Алла Леонидовна'),
(256, 50, 4, 1, '2014-10-20', '2014-11-04', 16, 'Петрова Сидора Ивановна'),
(257, 6, 3, 2, '2014-10-20', '2014-10-25', 6, 'Сидорова Петра Ивановна'),
(258, 22, 6, 4, '2014-10-21', '2014-11-09', 20, 'Иванова Ивана Сидоровна'),
(259, 42, 3, 5, '2014-10-22', '2014-10-25', 4, 'Иванова Алла Леонидовна'),
(260, 15, 6, 3, '2014-10-23', '2014-10-31', 9, 'Петрова Сидора Ивановна'),
(261, 35, 4, 2, '2014-10-24', '2014-11-09', 17, 'Сидорова Петра Ивановна'),
(262, 19, 3, 4, '2014-10-24', '2014-11-09', 17, 'Иванова Ивана Сидоровна'),
(263, 51, 5, 1, '2014-10-25', '2014-10-31', 7, 'Иванова Алла Леонидовна'),
(264, 23, 6, 4, '2014-10-26', '2014-11-13', 19, 'Петрова Сидора Ивановна'),
(265, 39, 3, 4, '2014-10-27', '2014-11-01', 6, 'Сидорова Петра Ивановна'),
(266, 11, 6, 1, '2014-10-28', '2014-11-05', 9, 'Иванова Ивана Сидоровна'),
(267, 1, 6, 4, '2014-10-28', '2014-11-18', 22, 'Иванова Алла Леонидовна'),
(268, 14, 3, 5, '2014-10-29', '2014-11-16', 19, 'Петрова Сидора Ивановна'),
(269, 47, 3, 5, '2014-10-30', '2014-11-16', 18, 'Сидорова Петра Ивановна'),
(270, 32, 5, 2, '2014-10-31', '2014-11-19', 20, 'Иванова Ивана Сидоровна'),
(271, 17, 5, 1, '2014-11-01', '2014-11-18', 18, 'Иванова Ивана Сидоровна'),
(272, 35, 5, 4, '2014-11-01', '2014-11-08', 8, 'Иванова Ивана Сидоровна'),
(273, 38, 6, 3, '2014-11-02', '2014-11-19', 18, 'Иванова Ивана Сидоровна'),
(274, 46, 6, 2, '2014-11-03', '2014-11-24', 22, 'Иванова Ивана Сидоровна'),
(275, 15, 6, 2, '2014-11-04', '2014-11-15', 12, 'Иванова Ивана Сидоровна'),
(276, 33, 6, 3, '2014-11-05', '2014-11-21', 17, 'Иванова Ивана Сидоровна'),
(277, 4, 4, 3, '2014-11-05', '2014-11-08', 4, 'Иванова Ивана Сидоровна'),
(278, 6, 3, 3, '2014-11-06', '2014-11-26', 21, 'Иванова Ивана Сидоровна'),
(279, 4, 5, 4, '2014-11-07', '2014-11-24', 18, 'Иванова Ивана Сидоровна'),
(280, 19, 4, 3, '2014-11-08', '2014-11-24', 17, 'Иванова Ивана Сидоровна'),
(281, 17, 3, 4, '2014-11-09', '2014-11-23', 15, 'Иванова Алла Леонидовна'),
(282, 1, 3, 4, '2014-11-09', '2014-11-27', 19, 'Иванова Алла Леонидовна'),
(283, 16, 6, 4, '2014-11-10', '2014-11-23', 14, 'Иванова Ивана Сидоровна'),
(284, 46, 6, 3, '2014-11-11', '2014-11-16', 6, 'Иванова Ивана Сидоровна'),
(285, 51, 3, 1, '2014-11-12', '2014-12-03', 22, 'Иванова Ивана Сидоровна'),
(286, 26, 6, 3, '2014-11-13', '2014-12-01', 19, 'Иванова Ивана Сидоровна'),
(287, 54, 5, 4, '2014-11-13', '2014-12-04', 22, 'Иванова Ивана Сидоровна'),
(288, 14, 6, 5, '2014-11-14', '2014-11-26', 13, 'Иванова Ивана Сидоровна'),
(289, 35, 6, 5, '2014-11-15', '2014-11-25', 11, 'Иванова Ивана Сидоровна'),
(290, 15, 4, 2, '2014-11-16', '2014-11-25', 10, 'Иванова Ивана Сидоровна'),
(291, 50, 3, 1, '2014-11-17', '2014-11-30', 14, 'Иванова Ивана Сидоровна'),
(292, 6, 4, 1, '2014-11-17', '2014-12-05', 19, 'Иванова Ивана Сидоровна'),
(293, 10, 5, 4, '2014-11-18', '2014-11-23', 6, 'Иванова Ивана Сидоровна'),
(294, 52, 4, 4, '2014-11-19', '2014-12-03', 15, 'Иванова Ивана Сидоровна'),
(295, 48, 5, 2, '2014-11-20', '2014-12-05', 16, 'Иванова Ивана Сидоровна'),
(296, 49, 4, 5, '2014-11-21', '2014-12-08', 18, 'Иванова Ивана Сидоровна'),
(297, 3, 3, 3, '2014-11-21', '2014-11-27', 7, 'Иванова Ивана Сидоровна'),
(298, 45, 5, 5, '2014-11-22', '2014-12-01', 10, 'Иванова Ивана Сидоровна'),
(299, 2, 5, 5, '2014-11-23', '2014-12-14', 22, 'Иванова Ивана Сидоровна'),
(300, 21, 3, 5, '2014-11-24', '2014-12-09', 16, 'Иванова Ивана Сидоровна'),
(301, 42, 5, 1, '2014-11-25', '2014-12-11', 17, 'Иванова Ивана Сидоровна'),
(302, 8, 5, 5, '2014-11-25', '2014-12-01', 7, 'Иванова Алла Леонидовна'),
(303, 43, 6, 3, '2014-11-26', '2014-12-04', 9, 'Иванова Алла Леонидовна'),
(304, 41, 5, 5, '2014-11-27', '2014-12-03', 7, 'Иванова Алла Леонидовна'),
(305, 39, 4, 1, '2014-11-28', '2014-12-12', 15, 'Иванова Алла Леонидовна'),
(306, 7, 4, 5, '2014-11-29', '2014-12-18', 20, 'Петрова Сидора Ивановна'),
(307, 6, 6, 1, '2014-11-29', '2014-12-12', 14, 'Петрова Сидора Ивановна'),
(308, 43, 4, 2, '2014-11-30', '2014-12-18', 19, 'Петрова Сидора Ивановна'),
(309, 10, 3, 3, '2014-12-01', '2014-12-18', 18, 'Иванова Ивана Сидоровна'),
(310, 37, 3, 4, '2014-12-02', '2014-12-09', 8, 'Иванова Алла Леонидовна'),
(311, 24, 5, 3, '2014-12-03', '2014-12-20', 18, 'Петрова Сидора Ивановна'),
(312, 34, 3, 4, '2014-12-03', '2014-12-09', 7, 'Сидорова Петра Ивановна'),
(313, 8, 3, 2, '2014-12-04', '2014-12-20', 17, 'Иванова Ивана Сидоровна'),
(314, 48, 4, 5, '2014-12-05', '2014-12-09', 5, 'Иванова Алла Леонидовна'),
(315, 39, 3, 3, '2014-12-06', '2014-12-26', 21, 'Петрова Сидора Ивановна'),
(316, 17, 5, 2, '2014-12-07', '2014-12-16', 10, 'Сидорова Петра Ивановна'),
(317, 9, 6, 5, '2014-12-07', '2014-12-13', 7, 'Иванова Ивана Сидоровна'),
(318, 54, 6, 4, '2014-12-08', '2014-12-22', 15, 'Иванова Алла Леонидовна'),
(319, 52, 5, 1, '2014-12-09', '2014-12-21', 13, 'Петрова Сидора Ивановна'),
(320, 41, 3, 1, '2014-12-10', '2014-12-24', 15, 'Сидорова Петра Ивановна'),
(321, 5, 6, 5, '2014-12-11', '2015-01-01', 22, 'Иванова Ивана Сидоровна'),
(322, 49, 5, 5, '2014-12-11', '2014-12-31', 21, 'Иванова Алла Леонидовна'),
(323, 55, 3, 1, '2014-12-12', '2014-12-23', 12, 'Петрова Сидора Ивановна'),
(324, 7, 6, 1, '2014-12-13', '2015-01-01', 20, 'Сидорова Петра Ивановна'),
(325, 39, 3, 1, '2014-12-14', '2014-12-25', 12, 'Иванова Ивана Сидоровна'),
(326, 6, 6, 1, '2014-12-15', '2014-12-20', 6, 'Иванова Алла Леонидовна'),
(327, 17, 5, 5, '2014-12-15', '2014-12-28', 14, 'Петрова Сидора Ивановна'),
(328, 44, 4, 4, '2014-12-16', '2015-01-05', 21, 'Сидорова Петра Ивановна'),
(329, 48, 3, 4, '2014-12-17', '2014-12-25', 9, 'Иванова Ивана Сидоровна'),
(330, 27, 5, 2, '2014-12-18', '2014-12-29', 12, 'Иванова Алла Леонидовна'),
(331, 50, 3, 2, '2014-12-19', '2014-12-31', 13, 'Петрова Сидора Ивановна'),
(332, 51, 6, 1, '2014-12-19', '2014-12-25', 7, 'Сидорова Петра Ивановна'),
(333, 33, 4, 4, '2014-12-20', '2014-12-24', 5, 'Иванова Ивана Сидоровна'),
(334, 3, 3, 4, '2014-12-21', '2014-12-25', 5, 'Иванова Алла Леонидовна'),
(335, 9, 4, 1, '2014-12-22', '2015-01-01', 11, 'Петрова Сидора Ивановна'),
(336, 26, 5, 1, '2014-12-23', '2014-12-26', 4, 'Сидорова Петра Ивановна'),
(337, 54, 3, 1, '2014-12-23', '2015-01-08', 17, 'Иванова Ивана Сидоровна'),
(338, 31, 6, 5, '2014-12-24', '2015-01-08', 16, 'Иванова Алла Леонидовна'),
(339, 23, 5, 3, '2014-12-25', '2015-01-14', 21, 'Петрова Сидора Ивановна'),
(340, 40, 3, 5, '2014-12-26', '2015-01-11', 17, 'Сидорова Петра Ивановна'),
(341, 5, 5, 2, '2014-12-27', '2015-01-01', 6, 'Иванова Ивана Сидоровна'),
(342, 50, 4, 3, '2014-12-27', '2015-01-07', 12, 'Иванова Алла Леонидовна'),
(343, 41, 5, 2, '2014-12-28', '2015-01-10', 14, 'Петрова Сидора Ивановна'),
(344, 14, 5, 5, '2014-12-29', '2015-01-16', 19, 'Сидорова Петра Ивановна'),
(345, 49, 5, 4, '2014-12-30', '2015-01-05', 7, 'Иванова Ивана Сидоровна'),
(346, 38, 5, 1, '2014-12-31', '2015-01-10', 11, 'Иванова Алла Леонидовна'),
(347, 39, 5, 4, '2014-12-31', '2015-01-08', 9, 'Петрова Сидора Ивановна'),
(348, 6, 3, 4, '2015-01-01', '2015-01-20', 20, 'Сидорова Петра Ивановна'),
(349, 52, 3, 4, '2015-01-02', '2015-01-13', 12, 'Иванова Ивана Сидоровна'),
(350, 17, 4, 1, '2015-01-03', '2015-01-15', 13, 'Иванова Алла Леонидовна'),
(351, 13, 4, 2, '2015-01-04', '2015-01-14', 11, 'Петрова Сидора Ивановна'),
(352, 37, 5, 4, '2015-01-04', '2015-01-11', 8, 'Сидорова Петра Ивановна'),
(353, 41, 3, 3, '2015-01-05', '2015-01-18', 14, 'Иванова Ивана Сидоровна'),
(354, 2, 5, 2, '2015-01-06', '2015-01-10', 5, 'Иванова Алла Леонидовна'),
(355, 17, 5, 3, '2015-01-07', '2015-01-23', 17, 'Петрова Сидора Ивановна'),
(356, 18, 5, 5, '2015-01-08', '2015-01-23', 16, 'Сидорова Петра Ивановна'),
(357, 15, 4, 5, '2015-01-08', '2015-01-23', 16, 'Иванова Ивана Сидоровна'),
(358, 51, 4, 2, '2015-01-09', '2015-01-21', 13, 'Иванова Алла Леонидовна'),
(359, 9, 3, 5, '2015-01-10', '2015-01-26', 17, 'Петрова Сидора Ивановна'),
(360, 50, 6, 1, '2015-01-11', '2015-01-26', 16, 'Сидорова Петра Ивановна'),
(361, 9, 3, 3, '2015-01-12', '2015-02-02', 22, 'Иванова Ивана Сидоровна'),
(362, 48, 6, 4, '2015-01-12', '2015-01-17', 6, 'Иванова Алла Леонидовна'),
(363, 2, 3, 1, '2015-01-13', '2015-01-22', 10, 'Петрова Сидора Ивановна'),
(364, 19, 5, 5, '2015-01-14', '2015-01-21', 8, 'Сидорова Петра Ивановна'),
(365, 14, 5, 4, '2015-01-15', '2015-02-04', 21, 'Иванова Ивана Сидоровна'),
(366, 16, 4, 5, '2015-01-16', '2015-01-21', 6, 'Иванова Ивана Сидоровна'),
(367, 40, 3, 4, '2015-01-16', '2015-01-22', 7, 'Иванова Ивана Сидоровна'),
(368, 37, 5, 1, '2015-01-17', '2015-02-07', 22, 'Иванова Ивана Сидоровна'),
(369, 3, 3, 5, '2015-01-18', '2015-01-22', 5, 'Иванова Ивана Сидоровна'),
(370, 13, 5, 4, '2015-01-19', '2015-02-07', 20, 'Иванова Ивана Сидоровна'),
(371, 32, 4, 5, '2015-01-20', '2015-02-02', 14, 'Иванова Ивана Сидоровна'),
(372, 6, 5, 3, '2015-01-20', '2015-01-27', 8, 'Иванова Ивана Сидоровна'),
(373, 7, 6, 3, '2015-01-21', '2015-02-08', 19, 'Иванова Ивана Сидоровна'),
(374, 22, 3, 5, '2015-01-22', '2015-02-12', 22, 'Иванова Ивана Сидоровна'),
(375, 10, 6, 1, '2015-01-23', '2015-01-30', 8, 'Иванова Ивана Сидоровна'),
(376, 3, 6, 4, '2015-01-24', '2015-02-05', 13, 'Иванова Алла Леонидовна'),
(377, 1, 5, 2, '2015-01-24', '2015-02-12', 20, 'Иванова Алла Леонидовна'),
(378, 9, 6, 2, '2015-01-25', '2015-02-15', 22, 'Иванова Ивана Сидоровна'),
(379, 50, 6, 4, '2015-01-26', '2015-02-08', 14, 'Иванова Ивана Сидоровна'),
(380, 12, 3, 3, '2015-01-27', '2015-01-30', 4, 'Иванова Ивана Сидоровна'),
(381, 15, 5, 1, '2015-01-28', '2015-02-16', 20, 'Иванова Ивана Сидоровна'),
(382, 11, 5, 5, '2015-01-28', '2015-02-06', 10, 'Иванова Ивана Сидоровна'),
(383, 50, 5, 4, '2015-01-29', '2015-02-02', 5, 'Иванова Ивана Сидоровна'),
(384, 26, 4, 4, '2015-01-30', '2015-02-11', 13, 'Иванова Ивана Сидоровна'),
(385, 16, 5, 5, '2015-01-31', '2015-02-06', 7, 'Иванова Ивана Сидоровна'),
(386, 40, 5, 3, '2015-02-01', '2015-02-20', 20, 'Иванова Ивана Сидоровна'),
(387, 54, 5, 3, '2015-02-01', '2015-02-18', 18, 'Иванова Ивана Сидоровна'),
(388, 20, 6, 3, '2015-02-02', '2015-02-09', 8, 'Иванова Ивана Сидоровна'),
(389, 9, 4, 5, '2015-02-03', '2015-02-13', 11, 'Иванова Ивана Сидоровна'),
(390, 32, 4, 4, '2015-02-04', '2015-02-23', 20, 'Иванова Ивана Сидоровна'),
(391, 20, 4, 5, '2015-02-05', '2015-02-13', 9, 'Иванова Ивана Сидоровна'),
(392, 33, 4, 1, '2015-02-05', '2015-02-14', 10, 'Иванова Ивана Сидоровна'),
(393, 46, 5, 4, '2015-02-06', '2015-02-20', 15, 'Иванова Ивана Сидоровна'),
(394, 20, 5, 4, '2015-02-07', '2015-02-17', 11, 'Иванова Ивана Сидоровна'),
(395, 35, 6, 1, '2015-02-08', '2015-02-25', 18, 'Иванова Ивана Сидоровна'),
(396, 45, 5, 3, '2015-02-09', '2015-02-23', 15, 'Иванова Ивана Сидоровна'),
(397, 51, 6, 5, '2015-02-09', '2015-03-02', 22, 'Иванова Алла Леонидовна'),
(398, 25, 4, 3, '2015-02-10', '2015-02-19', 10, 'Иванова Алла Леонидовна'),
(399, 13, 5, 2, '2015-02-11', '2015-02-21', 11, 'Иванова Алла Леонидовна'),
(400, 53, 4, 2, '2015-02-12', '2015-02-23', 12, 'Иванова Алла Леонидовна'),
(401, 49, 5, 2, '2015-02-13', '2015-02-28', 16, 'Петрова Сидора Ивановна'),
(402, 53, 5, 4, '2015-02-13', '2015-02-18', 6, 'Петрова Сидора Ивановна'),
(403, 13, 3, 2, '2015-02-14', '2015-03-01', 16, 'Петрова Сидора Ивановна'),
(404, 35, 3, 4, '2015-02-15', '2015-02-19', 5, 'Иванова Ивана Сидоровна'),
(405, 45, 5, 1, '2015-02-16', '2015-03-08', 21, 'Иванова Алла Леонидовна'),
(406, 32, 5, 2, '2015-02-17', '2015-03-01', 13, 'Петрова Сидора Ивановна'),
(407, 32, 6, 1, '2015-02-17', '2015-02-22', 6, 'Сидорова Петра Ивановна'),
(408, 17, 4, 4, '2015-02-18', '2015-02-22', 5, 'Иванова Ивана Сидоровна'),
(409, 42, 4, 3, '2015-02-19', '2015-02-23', 5, 'Иванова Алла Леонидовна'),
(410, 52, 5, 1, '2015-02-20', '2015-03-08', 17, 'Петрова Сидора Ивановна'),
(411, 12, 4, 1, '2015-02-21', '2015-03-05', 13, 'Сидорова Петра Ивановна'),
(412, 9, 4, 4, '2015-02-21', '2015-03-07', 15, 'Иванова Ивана Сидоровна'),
(413, 37, 6, 5, '2015-02-22', '2015-03-13', 20, 'Иванова Алла Леонидовна'),
(414, 52, 3, 4, '2015-02-23', '2015-03-14', 20, 'Петрова Сидора Ивановна'),
(415, 51, 5, 4, '2015-02-24', '2015-03-03', 8, 'Сидорова Петра Ивановна'),
(416, 52, 3, 4, '2015-02-25', '2015-03-18', 22, 'Иванова Ивана Сидоровна'),
(417, 54, 3, 4, '2015-02-25', '2015-03-07', 11, 'Иванова Алла Леонидовна'),
(418, 9, 4, 4, '2015-02-26', '2015-03-12', 15, 'Петрова Сидора Ивановна'),
(419, 49, 3, 5, '2015-02-27', '2015-03-17', 19, 'Сидорова Петра Ивановна'),
(420, 1, 5, 5, '2015-02-28', '2015-03-20', 21, 'Иванова Ивана Сидоровна'),
(421, 50, 4, 2, '2015-03-01', '2015-03-11', 11, 'Иванова Алла Леонидовна'),
(422, 56, 6, 5, '2015-03-01', '2015-03-17', 17, 'Петрова Сидора Ивановна'),
(423, 21, 3, 1, '2015-03-02', '2015-03-18', 17, 'Сидорова Петра Ивановна'),
(424, 53, 5, 5, '2015-03-03', '2015-03-11', 9, 'Иванова Ивана Сидоровна'),
(425, 16, 4, 3, '2015-03-04', '2015-03-08', 5, 'Иванова Алла Леонидовна'),
(426, 10, 6, 1, '2015-05-05', '2015-05-31', 27, 'Кукушонка Олеся Петровна'),
(427, 12, 5, 5, '2015-05-01', '2015-05-31', 31, 'Трололошкина Альбина Семеновна'),
(428, 5, 4, 2, '2015-05-21', NULL, NULL, 'Альбенкова Анна Ивановна'),
(429, 11, 1, NULL, '2015-05-07', '2015-05-25', NULL, NULL),
(430, 3, 1, NULL, '2015-05-14', '2015-05-25', NULL, 'Колобова Анна Сименовна');

-- 
-- Вывод данных для таблицы sick_leave_certificates
--
INSERT INTO sick_leave_certificates VALUES
(1, 'Воеводин Дарий Евгеньевич', 4, '2015-01-10', '2015-01-17', 'Юганцев Виктор Данилевич'),
(2, 'Карандашовa Милена Вячеславовна', 2, '2015-01-12', '2015-01-21', 'Луньков Вячеслав Елизарович'),
(3, 'Минеев Андрей Миронович', 2, '2015-01-13', '2015-01-21', 'Осинa Ксения Александровна'),
(4, 'Проничев Поликарп Валерьянович', 1, '2015-01-14', '2015-01-19', 'Ишеевa Рената Андрияновна'),
(5, 'Грибалевa Изабелла Геннадиевна', 3, '2015-01-15', '2015-01-19', 'Махмудовa Ирина Петровна'),
(6, 'Ишеевa Рената Андрияновна', 1, '2015-01-16', '2015-01-24', 'Иванов Сергей Эрнстович'),
(7, 'Енотов Максим Ефремович', 1, '2015-01-19', '2015-01-27', 'Коновалов Пимен Андриянович'),
(8, 'Мананниковa Рада Ираклиевна', 4, '2015-01-20', '2015-01-26', 'Живенков Лев Якубович'),
(9, 'Ефремовичa Полина Александровна', 2, '2015-01-21', '2015-01-24', 'Грибалевa Изабелла Геннадиевна'),
(10, 'Гуковский Прохор Ростиславович', 2, '2015-01-22', '2015-01-27', 'Иванов Иван Иванович'),
(11, 'Луньков Вячеслав Елизарович', 2, '2015-01-23', '2015-01-31', 'Алифанов Сергей Моисеевич'),
(12, 'Карандашовa Милена Вячеславовна', 3, '2015-01-26', '2015-02-02', 'Столяровa Анна Несторовна'),
(13, 'Проничев Поликарп Валерьянович', 1, '2015-01-27', '2015-02-01', 'Столяровa Анна Несторовна'),
(14, 'Гусляков Лев Ульянович', 2, '2015-01-28', '2015-01-31', 'Алифанов Максим Моисеевич'),
(15, 'Луньков Вячеслав Елизарович', 4, '2015-01-29', '2015-02-06', 'Ивашевa Оксана Фомевна'),
(16, 'Алифанов Максим Моисеевич', 4, '2015-01-30', '2015-02-04', 'Марченко Юлия Елизаровна'),
(17, 'Ефремовичa Полина Александровна', 2, '2015-02-02', '2015-02-09', 'Алифанов Сергей Моисеевич'),
(18, 'Марченко Юлия Елизаровна', 4, '2015-02-03', '2015-02-13', 'Чичваркинa Ивана Серафимовна'),
(19, 'Гусляков Лев Ульянович', 3, '2015-02-04', '2015-02-13', 'Юганцев Виктор Данилевич'),
(20, 'Алифанов Сергей Моисеевич', 4, '2015-02-05', '2015-02-12', 'Луньков Вячеслав Елизарович'),
(21, 'Енотов Максим Ефремович', 1, '2015-02-06', '2015-02-13', 'Минеев Евгений Миронович'),
(22, 'Живенков Лев Якубович', 1, '2015-02-09', '2015-02-16', 'Минеев Евгений Миронович'),
(23, 'Луньков Вячеслав Елизарович', 3, '2015-02-10', '2015-02-15', 'Осиновская Ксения Юрьевна'),
(24, 'Минеев Андрей Миронович', 2, '2015-02-11', '2015-02-14', 'Живенков Лев Якубович'),
(25, 'Копцевa Анна Семеновна', 1, '2015-02-12', '2015-02-16', 'Щерба Влада Анатолиевна'),
(26, 'Иванов Иван Иванович', 1, '2015-02-13', '2015-02-20', 'Проничев Поликарп Валерьянович'),
(27, 'Осинa Ксения Александровна', 3, '2015-02-16', '2015-02-23', 'Воеводинa Дарья Евгениевна'),
(28, 'Карандашовa Милена Вячеславовна', 3, '2015-02-17', '2015-02-26', 'Щерба Влада Анатолиевна'),
(29, 'Стеблевa Татьяна Андрияновна', 2, '2015-02-18', '2015-02-21', 'Ефремовичa Полина Александровна'),
(30, 'Никишин Юрий Федотович', 2, '2015-02-19', '2015-02-27', 'Муханов Евстигней Адрианович'),
(31, 'Алифанов Сергей Моисеевич', 3, '2015-02-20', '2015-02-27', 'Ефремовичa Полина Александровна'),
(32, 'Пончиков Кирилл Гордеевич', 4, '2015-02-23', '2015-03-02', 'Минеев Андрей Миронович'),
(33, 'Минеев Андрей Миронович', 1, '2015-02-24', '2015-03-02', 'Ефремовичa Полина Александровна'),
(34, 'Никишин Юрий Федотович', 2, '2015-02-25', '2015-03-02', 'Гуковский Прохор Ростиславович'),
(35, 'Турчанинов Роман Чеславович', 4, '2015-02-26', '2015-03-07', 'Копцевa Анна Семеновна'),
(36, 'Мананниковa Рада Ираклиевна', 3, '2015-02-27', '2015-03-06', 'Полторакa Евгения Давидовна'),
(37, 'Воеводинa Дарья Евгениевна', 4, '2015-03-02', '2015-03-06', 'Луньков Вячеслав Елизарович'),
(38, 'Грибалевa Изабелла Геннадиевна', 2, '2015-03-03', '2015-03-09', 'Алифанов Сергей Моисеевич'),
(39, 'Луньков Вячеслав Елизарович', 3, '2015-03-04', '2015-03-09', 'Енотов Максим Ефремович'),
(40, 'Богоявленский Алексий Венедиктович', 3, '2015-03-05', '2015-03-14', 'Луньков Вячеслав Елизарович'),
(41, 'Безродный Евдокия Елисеевна', 1, '2015-03-06', '2015-03-14', 'Ефремовичa Полина Александровна'),
(42, 'Безродный Евдокия Елисеевна', 3, '2015-03-09', '2015-03-19', 'Алифанов Сергей Моисеевич'),
(43, 'Весовой Эрнест Изяславович', 3, '2015-03-10', '2015-03-13', 'Юганцев Виктор Данилевич'),
(44, 'Луньков Вячеслав Елизарович', 1, '2015-03-11', '2015-03-18', 'Пронин Потап Потапович'),
(45, 'Пончиков Кирилл Гордеевич', 3, '2015-03-12', '2015-03-19', 'Иванов Иван Иванович'),
(46, 'Минеев Евгений Миронович', 3, '2015-03-13', '2015-03-23', 'Луньков Вячеслав Елизарович'),
(47, 'Грибалевa Изабелла Геннадиевна', 2, '2015-03-16', '2015-03-24', 'Безродный Евдокия Елисеевна'),
(48, 'Богоявленский Пимен Венедиктович', 2, '2015-03-17', '2015-03-23', 'Мананниковa Рада Ираклиевна'),
(49, 'Пронин Потап Потапович', 4, '2015-03-18', '2015-03-22', 'Щерба Ольга Антоновна'),
(50, 'Луньков Вячеслав Елизарович', 4, '2015-03-19', '2015-03-27', 'Гуковский Прохор Ростиславович'),
(51, 'Чичваркинa Ивана Серафимовна', 1, '2015-03-20', '2015-03-25', 'Копцевa Анна Семеновна'),
(52, 'Минеев Андрей Миронович', 2, '2015-03-23', '2015-03-28', 'Мананниковa Рада Ираклиевна'),
(53, 'Алифанов Максим Моисеевич', 2, '2015-03-24', '2015-04-01', 'Живенков Лев Якубович'),
(54, 'Коновалов Пимен Андриянович', 3, '2015-03-25', '2015-04-04', 'Пончиков Кирилл Гордеевич'),
(55, 'Щерба Влада Анатолиевна', 3, '2015-03-26', '2015-03-31', 'Осиновская Ксения Юрьевна'),
(56, 'Щерба Ольга Антоновна', 4, '2015-03-27', '2015-04-04', 'Варфоломеевa Вероника Ивановна'),
(57, 'Коновалов Пимен Андриянович', 1, '2015-03-30', '2015-04-05', 'Весовой Эрнест Изяславович'),
(58, 'Ишеевa Рената Андрияновна', 2, '2015-03-31', '2015-04-08', 'Варфоломеевa Вероника Ивановна'),
(59, 'Ефремовичa Полина Александровна', 4, '2015-04-01', '2015-04-04', 'Турчанинов Роман Чеславович'),
(60, 'Стеблевa Татьяна Андрияновна', 2, '2015-04-02', '2015-04-11', 'Юганцев Виктор Данилевич'),
(61, 'Юганцев Виктор Данилевич', 2, '2015-04-03', '2015-04-11', 'Весовой Эрнест Изяславович'),
(62, 'Никишин Юрий Федотович', 3, '2015-04-06', '2015-04-09', 'Воеводин Дарий Евгеньевич'),
(63, 'Мананниковa Рада Ираклиевна', 2, '2015-04-07', '2015-04-13', 'Ефремовичa Полина Александровна'),
(64, 'Ефремовичa Полина Александровна', 4, '2015-04-08', '2015-04-16', 'Столяровa Анна Несторовна'),
(65, 'Муханов Евстигней Адрианович', 2, '2015-04-09', '2015-04-19', 'Осиновская Ксения Юрьевна'),
(66, 'Мананниковa Рада Ираклиевна', 3, '2015-04-10', '2015-04-20', 'Пигус Аркадий Левович'),
(67, 'Мацовкин Никита Платонович', 4, '2015-04-13', '2015-04-18', 'Юганцев Виктор Данилевич'),
(68, 'Полторакa Евгения Давидовна', 3, '2015-04-14', '2015-04-18', 'Воеводинa Дарья Евгениевна'),
(69, 'Муханов Евстигней Адрианович', 3, '2015-04-15', '2015-04-25', 'Проничев Поликарп Валерьянович'),
(70, 'Коновалов Пимен Андриянович', 4, '2015-04-16', '2015-04-26', 'Иванов Сергей Эрнстович'),
(71, 'Копцевa Анна Семеновна', 1, '2015-04-17', '2015-04-25', 'Гуковский Прохор Ростиславович');

-- 
-- Вывод данных для таблицы examination_resoults
--
INSERT INTO examination_resoults VALUES
(1, 52, '2014-10-01 05:00:00', 3, 5, 'нет'),
(2, 3, '2014-01-02 04:20:00', 1, 5, 'да'),
(3, 51, '2014-01-03 03:20:00', 4, 5, 'да'),
(4, 6, '2014-01-03 06:00:00', 2, 5, 'да'),
(5, 11, '2014-01-04 04:40:00', 4, 3, 'да'),
(6, 29, '2014-01-04 06:20:00', 4, 3, 'нет'),
(7, 45, '2014-01-05 04:00:00', 2, 3, 'нет'),
(8, 30, '2014-01-06 03:00:00', 2, 3, 'нет'),
(9, 33, '2014-01-06 06:00:00', 3, 4, 'да'),
(10, 29, '2014-01-08 04:00:00', 2, 5, 'нет'),
(11, 42, '2014-01-08 04:40:00', 4, 4, 'да'),
(12, 2, '2014-01-10 04:40:00', 1, 4, 'да'),
(13, 19, '2014-01-12 03:20:00', 3, 3, 'да'),
(14, 22, '2014-01-14 05:00:00', 1, 5, 'нет'),
(15, 27, '2014-01-16 04:00:00', 3, 3, 'нет'),
(16, 5, '2014-01-17 04:00:00', 4, 4, 'да'),
(17, 50, '2014-01-17 04:40:00', 1, 6, 'нет'),
(18, 34, '2014-01-17 05:20:00', 4, 5, 'нет'),
(19, 44, '2014-01-19 03:40:00', 1, 4, 'нет'),
(20, 47, '2014-01-20 03:40:00', 4, 5, 'нет'),
(21, 37, '2014-01-20 05:40:00', 1, 5, 'да'),
(22, 40, '2014-01-21 03:00:00', 4, 4, 'да'),
(23, 37, '2014-01-21 03:00:00', 1, 5, 'да'),
(24, 38, '2014-01-24 04:20:00', 3, 4, 'да'),
(25, 39, '2014-01-27 06:20:00', 1, 3, 'да'),
(26, 5, '2014-01-28 04:00:00', 1, 5, 'да'),
(27, 47, '2014-01-29 06:00:00', 3, 4, 'нет'),
(28, 2, '2014-01-30 05:20:00', 4, 6, 'да'),
(29, 27, '2014-01-31 04:20:00', 1, 4, 'нет'),
(30, 30, '2014-01-31 05:00:00', 3, 4, 'нет'),
(31, 31, '2014-02-01 04:20:00', 3, 3, 'да'),
(32, 19, '2014-02-02 04:20:00', 3, 3, 'нет'),
(33, 14, '2014-02-03 03:00:00', 2, 4, 'нет'),
(34, 52, '2014-02-04 06:20:00', 2, 3, 'нет'),
(35, 4, '2014-02-06 03:20:00', 3, 5, 'да'),
(36, 54, '2014-02-06 06:20:00', 3, 5, 'да'),
(37, 19, '2014-02-09 03:20:00', 1, 3, 'да'),
(38, 32, '2014-02-10 02:40:00', 4, 6, 'нет'),
(39, 43, '2014-02-12 04:40:00', 4, 4, 'да'),
(40, 11, '2014-02-12 05:00:00', 1, 3, 'нет'),
(41, 45, '2014-02-12 06:20:00', 1, 6, 'нет'),
(42, 20, '2014-02-14 04:00:00', 4, 5, 'да'),
(43, 46, '2014-02-17 05:00:00', 4, 3, 'да'),
(44, 9, '2014-02-18 05:20:00', 1, 4, 'да'),
(45, 17, '2014-02-20 05:00:00', 2, 3, 'нет'),
(46, 54, '2014-02-21 04:00:00', 2, 6, 'нет'),
(47, 31, '2014-02-23 03:00:00', 2, 4, 'нет'),
(48, 13, '2014-02-24 03:20:00', 4, 6, 'нет'),
(49, 13, '2014-02-25 04:20:00', 2, 5, 'нет'),
(50, 10, '2014-02-27 03:00:00', 3, 5, 'да'),
(51, 43, '2014-03-01 03:00:00', 2, 6, 'да'),
(52, 44, '2014-03-02 02:40:00', 4, 6, 'нет'),
(53, 41, '2014-03-04 04:20:00', 3, 4, 'нет'),
(54, 26, '2014-03-06 05:20:00', 3, 3, 'нет'),
(55, 10, '2014-03-06 05:20:00', 2, 3, 'нет'),
(56, 11, '2014-03-09 05:40:00', 1, 4, 'нет'),
(57, 5, '2014-03-10 06:00:00', 1, 3, 'нет'),
(58, 49, '2014-03-11 04:00:00', 3, 5, 'нет'),
(59, 42, '2014-03-14 02:40:00', 4, 3, 'да'),
(60, 46, '2014-03-14 03:20:00', 2, 4, 'нет'),
(61, 33, '2014-03-16 03:00:00', 2, 6, 'да'),
(62, 26, '2014-03-17 04:40:00', 3, 4, 'да'),
(63, 31, '2014-03-18 02:40:00', 2, 5, 'да'),
(64, 24, '2014-03-18 03:00:00', 2, 3, 'да'),
(65, 45, '2014-03-18 04:40:00', 1, 3, 'да'),
(66, 22, '2014-03-18 06:00:00', 1, 6, 'нет'),
(67, 12, '2014-03-18 06:20:00', 4, 4, 'да'),
(68, 53, '2014-03-19 05:40:00', 1, 5, 'нет'),
(69, 2, '2014-03-21 03:00:00', 1, 4, 'да'),
(70, 38, '2014-03-22 02:40:00', 1, 4, 'нет'),
(71, 9, '2014-03-22 03:00:00', 1, 4, 'нет'),
(72, 23, '2014-03-22 06:20:00', 3, 4, 'да'),
(73, 20, '2014-03-24 02:40:00', 3, 5, 'нет'),
(74, 51, '2014-03-25 05:40:00', 3, 6, 'нет'),
(75, 24, '2014-03-26 04:00:00', 2, 6, 'нет'),
(76, 33, '2014-03-26 04:20:00', 4, 5, 'да'),
(77, 20, '2014-03-27 04:00:00', 1, 5, 'нет'),
(78, 47, '2014-03-27 05:40:00', 3, 6, 'нет'),
(79, 38, '2014-03-28 04:40:00', 1, 5, 'нет'),
(80, 32, '2014-03-29 05:20:00', 1, 6, 'нет'),
(81, 33, '2014-03-30 03:00:00', 1, 3, 'нет'),
(82, 41, '2014-03-31 04:20:00', 1, 6, 'да'),
(83, 51, '2014-03-31 04:20:00', 1, 6, 'да'),
(84, 15, '2014-04-01 04:00:00', 1, 5, 'да'),
(85, 42, '2014-04-03 03:40:00', 3, 5, 'нет'),
(86, 20, '2014-04-04 04:40:00', 3, 5, 'да'),
(87, 12, '2014-04-04 05:40:00', 2, 5, 'нет'),
(88, 2, '2014-04-05 05:00:00', 3, 4, 'да'),
(89, 14, '2014-04-06 03:00:00', 1, 6, 'нет'),
(90, 24, '2014-04-09 04:40:00', 2, 6, 'нет'),
(91, 37, '2014-04-09 05:00:00', 4, 5, 'да'),
(92, 22, '2014-04-10 05:00:00', 3, 6, 'да'),
(93, 3, '2014-04-11 03:20:00', 2, 4, 'нет'),
(94, 51, '2014-04-12 03:00:00', 2, 5, 'да'),
(95, 32, '2014-04-12 05:40:00', 1, 3, 'да'),
(96, 19, '2014-04-14 04:40:00', 2, 5, 'да'),
(97, 5, '2014-04-14 05:40:00', 4, 4, 'да'),
(98, 49, '2014-04-15 03:00:00', 3, 3, 'да'),
(99, 1, '2014-04-16 02:40:00', 4, 6, 'да'),
(100, 14, '2014-04-18 04:40:00', 2, 5, 'да'),
(101, 9, '2014-04-20 02:40:00', 4, 4, 'нет'),
(102, 51, '2014-04-20 03:20:00', 2, 3, 'да'),
(103, 18, '2014-04-20 03:40:00', 4, 5, 'нет'),
(104, 6, '2014-04-20 05:00:00', 1, 6, 'да'),
(105, 55, '2014-04-21 04:00:00', 1, 6, 'нет'),
(106, 34, '2014-04-21 05:20:00', 4, 4, 'да'),
(107, 51, '2014-04-22 03:20:00', 2, 5, 'нет'),
(108, 51, '2014-04-23 05:40:00', 3, 6, 'да'),
(109, 7, '2014-04-24 06:20:00', 1, 3, 'да'),
(110, 44, '2014-04-25 04:40:00', 2, 6, 'да'),
(111, 21, '2014-04-25 05:20:00', 2, 6, 'нет'),
(112, 40, '2014-04-25 06:20:00', 1, 5, 'нет'),
(113, 56, '2014-04-29 05:40:00', 2, 3, 'нет'),
(114, 36, '2014-04-29 05:40:00', 4, 4, 'да'),
(115, 3, '2014-04-30 04:00:00', 4, 4, 'да'),
(116, 22, '2014-04-30 04:00:00', 4, 4, 'да'),
(117, 9, '2014-05-04 05:00:00', 1, 4, 'да'),
(118, 21, '2014-05-05 03:40:00', 2, 5, 'нет'),
(119, 21, '2014-05-05 03:40:00', 4, 5, 'да'),
(120, 24, '2014-05-07 03:00:00', 4, 6, 'да'),
(121, 10, '2014-05-07 03:20:00', 4, 4, 'нет'),
(122, 27, '2014-05-07 04:40:00', 3, 6, 'да'),
(123, 21, '2014-05-10 02:40:00', 1, 4, 'да'),
(124, 16, '2014-05-10 03:00:00', 1, 6, 'да'),
(125, 42, '2014-05-10 03:20:00', 3, 6, 'нет'),
(126, 28, '2014-05-12 04:20:00', 1, 3, 'нет'),
(127, 51, '2014-05-12 05:00:00', 4, 3, 'нет'),
(128, 2, '2014-05-14 06:00:00', 3, 5, 'нет'),
(129, 25, '2014-05-16 03:00:00', 3, 6, 'нет'),
(130, 54, '2014-05-16 04:40:00', 1, 4, 'нет'),
(131, 41, '2014-05-16 06:00:00', 1, 4, 'нет'),
(132, 11, '2014-05-18 02:40:00', 3, 4, 'да'),
(133, 14, '2014-05-18 05:00:00', 2, 6, 'нет'),
(134, 25, '2014-05-20 02:40:00', 3, 5, 'нет'),
(135, 50, '2014-05-21 03:00:00', 3, 3, 'да'),
(136, 40, '2014-05-23 05:40:00', 4, 5, 'да'),
(137, 3, '2014-05-25 05:20:00', 2, 3, 'да'),
(138, 51, '2014-05-26 03:00:00', 3, 5, 'да'),
(139, 24, '2014-05-27 05:40:00', 3, 5, 'да'),
(140, 28, '2014-06-01 04:20:00', 1, 6, 'да'),
(141, 19, '2014-06-02 02:40:00', 4, 4, 'да'),
(142, 18, '2014-06-02 05:40:00', 3, 3, 'да'),
(143, 47, '2014-06-04 06:20:00', 4, 3, 'нет'),
(144, 47, '2014-06-05 02:40:00', 3, 3, 'нет'),
(145, 36, '2014-06-06 02:40:00', 4, 6, 'да'),
(146, 51, '2014-06-07 04:00:00', 4, 6, 'нет'),
(147, 38, '2014-06-07 04:40:00', 3, 5, 'нет'),
(148, 47, '2014-06-08 05:00:00', 3, 3, 'нет'),
(149, 56, '2014-06-10 03:40:00', 4, 4, 'нет'),
(150, 35, '2014-06-10 06:00:00', 3, 3, 'нет'),
(151, 16, '2014-06-11 05:40:00', 1, 4, 'нет'),
(152, 40, '2014-06-13 03:20:00', 3, 6, 'да'),
(153, 8, '2014-06-13 03:40:00', 1, 5, 'нет'),
(154, 36, '2014-06-13 05:00:00', 2, 6, 'нет'),
(155, 3, '2014-06-13 05:20:00', 3, 6, 'да'),
(156, 16, '2014-06-14 05:20:00', 1, 3, 'нет'),
(157, 6, '2014-06-15 05:00:00', 4, 5, 'да'),
(158, 25, '2014-06-16 04:20:00', 2, 3, 'нет'),
(159, 26, '2014-06-16 06:00:00', 1, 3, 'да'),
(160, 17, '2014-06-17 03:20:00', 1, 5, 'да'),
(161, 11, '2014-06-17 06:00:00', 1, 5, 'да'),
(162, 24, '2014-06-20 03:40:00', 4, 6, 'нет'),
(163, 42, '2014-06-20 03:40:00', 2, 6, 'нет'),
(164, 2, '2014-06-21 03:00:00', 2, 3, 'нет'),
(165, 40, '2014-06-21 05:00:00', 1, 3, 'нет'),
(166, 41, '2014-06-21 06:20:00', 2, 3, 'нет'),
(167, 15, '2014-06-22 03:00:00', 2, 4, 'нет'),
(168, 42, '2014-06-25 04:40:00', 1, 3, 'нет'),
(169, 11, '2014-06-25 05:20:00', 3, 3, 'да'),
(170, 10, '2014-06-27 05:40:00', 4, 3, 'да'),
(171, 21, '2014-06-29 04:40:00', 3, 5, 'да'),
(172, 45, '2014-07-01 05:20:00', 1, 6, 'да'),
(173, 27, '2014-07-01 06:20:00', 1, 6, 'да'),
(174, 38, '2014-07-02 03:00:00', 4, 5, 'да'),
(175, 20, '2014-07-03 05:20:00', 2, 4, 'да'),
(176, 51, '2014-07-04 06:20:00', 2, 6, 'нет'),
(177, 38, '2014-07-05 03:20:00', 2, 4, 'нет'),
(178, 2, '2014-07-05 04:00:00', 4, 5, 'нет'),
(179, 25, '2014-07-05 04:40:00', 4, 3, 'нет'),
(180, 1, '2014-07-05 04:40:00', 2, 4, 'да'),
(181, 21, '2014-07-07 02:40:00', 2, 6, 'да'),
(182, 48, '2014-07-07 05:20:00', 4, 6, 'нет'),
(183, 9, '2014-07-08 06:00:00', 4, 3, 'нет'),
(184, 33, '2014-07-10 06:00:00', 3, 3, 'нет'),
(185, 5, '2014-07-11 03:00:00', 4, 6, 'нет'),
(186, 23, '2014-07-14 05:00:00', 4, 6, 'да'),
(187, 49, '2014-07-15 03:00:00', 2, 3, 'нет'),
(188, 1, '2014-07-15 03:00:00', 1, 6, 'нет'),
(189, 15, '2014-07-15 03:20:00', 1, 4, 'нет'),
(190, 38, '2014-07-16 06:00:00', 4, 6, 'нет'),
(191, 5, '2014-07-17 03:00:00', 2, 6, 'да'),
(192, 5, '2014-07-17 05:00:00', 2, 4, 'нет'),
(193, 42, '2014-07-17 06:20:00', 1, 4, 'нет'),
(194, 20, '2014-07-18 03:20:00', 1, 3, 'да'),
(195, 11, '2014-07-19 02:40:00', 4, 5, 'да'),
(196, 28, '2014-07-20 03:00:00', 2, 4, 'нет'),
(197, 8, '2014-07-20 04:00:00', 1, 4, 'нет'),
(198, 42, '2014-07-20 05:00:00', 4, 6, 'да'),
(199, 40, '2014-07-21 03:20:00', 1, 3, 'нет'),
(200, 33, '2014-07-21 04:00:00', 4, 5, 'нет'),
(201, 56, '2014-07-21 05:20:00', 1, 4, 'да'),
(202, 41, '2014-07-22 04:40:00', 4, 4, 'да'),
(203, 29, '2014-07-26 03:40:00', 2, 6, 'да'),
(204, 5, '2014-07-27 04:00:00', 3, 6, 'нет'),
(205, 30, '2014-07-27 05:00:00', 3, 5, 'да'),
(206, 18, '2014-07-28 02:40:00', 3, 5, 'нет'),
(207, 49, '2014-07-28 03:00:00', 1, 4, 'нет'),
(208, 11, '2014-07-29 03:20:00', 4, 6, 'нет'),
(209, 32, '2014-07-29 04:20:00', 1, 4, 'нет'),
(210, 44, '2014-07-30 06:20:00', 2, 5, 'нет'),
(211, 2, '2014-07-31 06:00:00', 2, 5, 'да'),
(212, 39, '2014-08-02 05:40:00', 3, 6, 'да'),
(213, 45, '2014-08-02 05:40:00', 4, 5, 'да'),
(214, 28, '2014-08-02 06:20:00', 2, 5, 'нет'),
(215, 20, '2014-08-02 06:20:00', 2, 6, 'нет'),
(216, 19, '2014-08-03 06:20:00', 3, 3, 'да'),
(217, 50, '2014-08-04 03:20:00', 2, 3, 'да'),
(218, 27, '2014-08-05 04:40:00', 4, 6, 'нет'),
(219, 1, '2014-08-06 04:00:00', 3, 5, 'да'),
(220, 6, '2014-08-09 02:40:00', 2, 3, 'нет'),
(221, 25, '2014-08-09 04:20:00', 4, 3, 'нет'),
(222, 18, '2014-08-10 06:20:00', 1, 4, 'нет'),
(223, 22, '2014-08-11 03:20:00', 2, 3, 'да'),
(224, 4, '2014-08-12 02:40:00', 2, 3, 'да'),
(225, 7, '2014-08-12 05:40:00', 4, 6, 'нет'),
(226, 45, '2014-08-13 03:20:00', 4, 3, 'нет'),
(227, 56, '2014-08-15 03:00:00', 4, 4, 'нет'),
(228, 27, '2014-08-16 04:40:00', 1, 6, 'да'),
(229, 50, '2014-08-16 05:40:00', 3, 4, 'да'),
(230, 1, '2014-08-17 03:40:00', 3, 6, 'да'),
(231, 28, '2014-08-18 04:20:00', 1, 5, 'да'),
(232, 12, '2014-08-21 03:20:00', 4, 4, 'да'),
(233, 6, '2014-08-22 04:20:00', 1, 5, 'нет'),
(234, 20, '2014-08-22 06:20:00', 2, 5, 'да'),
(235, 9, '2014-08-23 02:40:00', 1, 3, 'да'),
(236, 55, '2014-08-23 05:20:00', 3, 6, 'нет'),
(237, 32, '2014-08-25 05:40:00', 2, 5, 'да'),
(238, 9, '2014-08-27 04:00:00', 1, 4, 'да'),
(239, 3, '2014-08-29 03:20:00', 2, 3, 'нет'),
(240, 13, '2014-08-29 04:00:00', 3, 5, 'нет'),
(241, 35, '2014-08-29 04:20:00', 1, 5, 'да'),
(242, 45, '2014-08-31 02:40:00', 3, 4, 'да'),
(243, 18, '2014-09-03 03:20:00', 1, 5, 'нет'),
(244, 56, '2014-09-03 05:20:00', 2, 3, 'да'),
(245, 30, '2014-09-04 03:00:00', 1, 5, 'да'),
(246, 32, '2014-09-05 05:40:00', 2, 3, 'да'),
(247, 47, '2014-09-06 06:20:00', 4, 3, 'нет'),
(248, 8, '2014-09-08 05:40:00', 2, 4, 'нет'),
(249, 32, '2014-09-09 03:40:00', 4, 6, 'нет'),
(250, 20, '2014-09-09 03:40:00', 1, 5, 'да'),
(251, 53, '2014-09-09 05:20:00', 1, 6, 'нет'),
(252, 5, '2014-09-13 06:20:00', 1, 3, 'нет'),
(253, 8, '2014-09-14 02:40:00', 2, 5, 'да'),
(254, 11, '2014-09-14 03:00:00', 3, 3, 'да'),
(255, 40, '2014-09-14 05:20:00', 3, 4, 'нет'),
(256, 14, '2014-09-15 02:40:00', 2, 4, 'да'),
(257, 1, '2014-09-15 04:40:00', 2, 5, 'нет'),
(258, 28, '2014-09-15 06:20:00', 3, 5, 'да'),
(259, 4, '2014-09-16 04:20:00', 2, 3, 'да'),
(260, 50, '2014-09-18 06:00:00', 3, 4, 'нет'),
(261, 15, '2014-09-19 05:40:00', 1, 4, 'да'),
(262, 56, '2014-09-20 06:00:00', 1, 6, 'нет'),
(263, 19, '2014-09-21 04:20:00', 4, 3, 'да'),
(264, 32, '2014-09-21 04:40:00', 4, 4, 'нет'),
(265, 16, '2014-09-22 03:00:00', 1, 3, 'да'),
(266, 33, '2014-09-23 03:00:00', 2, 4, 'нет'),
(267, 17, '2014-09-23 03:40:00', 2, 3, 'нет'),
(268, 2, '2014-09-27 03:40:00', 1, 6, 'да'),
(269, 53, '2014-09-29 06:00:00', 3, 4, 'да'),
(270, 44, '2014-09-29 06:00:00', 1, 3, 'да'),
(271, 4, '2014-10-01 04:20:00', 3, 4, 'да'),
(272, 32, '2014-10-02 06:00:00', 1, 6, 'нет'),
(273, 35, '2014-10-04 02:40:00', 3, 4, 'нет'),
(274, 32, '2014-10-05 03:40:00', 4, 3, 'да'),
(275, 23, '2014-10-05 04:00:00', 4, 5, 'да'),
(276, 48, '2014-10-06 06:20:00', 2, 4, 'да'),
(277, 48, '2014-10-07 04:20:00', 2, 6, 'нет'),
(278, 48, '2014-10-08 02:40:00', 4, 4, 'нет'),
(279, 22, '2014-10-08 06:20:00', 2, 3, 'да'),
(280, 52, '2014-10-09 05:20:00', 1, 6, 'да'),
(281, 5, '2014-10-10 02:40:00', 3, 3, 'нет'),
(282, 3, '2014-10-11 06:00:00', 4, 5, 'да'),
(283, 7, '2014-10-12 05:00:00', 1, 3, 'нет'),
(284, 10, '2014-10-14 05:40:00', 4, 5, 'да'),
(285, 25, '2014-10-16 03:00:00', 1, 3, 'нет'),
(286, 32, '2014-10-17 02:40:00', 2, 3, 'нет'),
(287, 24, '2014-10-18 05:00:00', 1, 3, 'да'),
(288, 19, '2014-10-21 05:40:00', 3, 3, 'нет'),
(289, 2, '2014-10-22 03:00:00', 2, 4, 'нет'),
(290, 37, '2014-10-22 05:00:00', 2, 3, 'да'),
(291, 5, '2014-10-22 06:20:00', 4, 5, 'нет'),
(292, 54, '2014-10-24 03:20:00', 3, 5, 'нет'),
(293, 40, '2014-10-24 04:00:00', 1, 6, 'нет'),
(294, 21, '2014-10-25 02:40:00', 3, 4, 'да'),
(295, 33, '2014-10-26 04:00:00', 4, 3, 'да'),
(296, 3, '2014-10-28 05:40:00', 4, 6, 'нет'),
(297, 15, '2014-10-29 05:20:00', 1, 6, 'нет'),
(298, 38, '2014-10-30 04:20:00', 3, 6, 'да'),
(299, 14, '2014-11-02 03:00:00', 3, 5, 'нет'),
(300, 23, '2014-11-02 04:00:00', 2, 4, 'да'),
(301, 6, '2014-11-02 06:20:00', 1, 5, 'да'),
(302, 6, '2014-11-07 03:20:00', 3, 4, 'да'),
(303, 44, '2014-11-07 05:20:00', 1, 4, 'нет'),
(304, 13, '2014-11-09 05:40:00', 4, 3, 'нет'),
(305, 2, '2014-11-09 06:20:00', 4, 3, 'да'),
(306, 38, '2014-11-11 03:00:00', 1, 4, 'нет'),
(307, 29, '2014-11-12 03:40:00', 3, 6, 'нет'),
(308, 19, '2014-11-12 05:40:00', 1, 3, 'да'),
(309, 43, '2014-11-13 04:40:00', 4, 4, 'да'),
(310, 39, '2014-11-13 06:00:00', 3, 4, 'нет'),
(311, 52, '2014-11-14 03:20:00', 3, 3, 'нет'),
(312, 31, '2014-11-15 02:40:00', 4, 4, 'да'),
(313, 56, '2014-11-16 04:40:00', 4, 5, 'да'),
(314, 36, '2014-11-16 06:00:00', 4, 6, 'да'),
(315, 10, '2014-11-18 05:40:00', 2, 4, 'нет'),
(316, 32, '2014-11-19 05:40:00', 1, 5, 'нет'),
(317, 1, '2014-11-21 05:40:00', 1, 5, 'да'),
(318, 10, '2014-11-22 05:00:00', 4, 5, 'да'),
(319, 15, '2014-11-24 05:20:00', 1, 6, 'нет'),
(320, 11, '2014-11-25 05:40:00', 3, 6, 'нет'),
(321, 26, '2014-11-26 02:40:00', 4, 4, 'да'),
(322, 52, '2014-11-26 03:00:00', 4, 3, 'нет'),
(323, 40, '2014-11-26 03:00:00', 3, 3, 'да'),
(324, 33, '2014-11-26 06:00:00', 3, 3, 'нет'),
(325, 27, '2014-11-26 06:20:00', 1, 5, 'да'),
(326, 10, '2014-11-27 04:40:00', 2, 3, 'нет'),
(327, 13, '2014-11-27 06:20:00', 1, 4, 'нет'),
(328, 31, '2014-11-28 04:40:00', 1, 5, 'да'),
(329, 30, '2014-11-29 03:00:00', 4, 6, 'да'),
(330, 18, '2014-11-29 05:20:00', 2, 4, 'нет'),
(331, 37, '2014-12-01 03:00:00', 3, 6, 'да'),
(332, 39, '2014-12-02 05:00:00', 2, 4, 'нет'),
(333, 24, '2014-12-04 05:20:00', 1, 3, 'да'),
(334, 12, '2014-12-05 05:20:00', 4, 4, 'да'),
(335, 32, '2014-12-06 02:40:00', 4, 6, 'да'),
(336, 48, '2014-12-06 03:00:00', 2, 6, 'нет'),
(337, 17, '2014-12-06 03:00:00', 1, 6, 'да'),
(338, 6, '2014-12-06 05:20:00', 2, 3, 'да'),
(339, 43, '2014-12-06 06:00:00', 3, 6, 'да'),
(340, 5, '2014-12-11 05:00:00', 3, 5, 'нет'),
(341, 30, '2014-12-12 06:20:00', 4, 3, 'да'),
(342, 16, '2014-12-14 06:20:00', 3, 6, 'нет'),
(343, 5, '2014-12-15 03:20:00', 2, 5, 'да'),
(344, 14, '2014-12-16 03:00:00', 2, 5, 'да'),
(345, 29, '2014-12-16 04:00:00', 4, 4, 'да'),
(346, 29, '2014-12-16 05:20:00', 3, 5, 'нет'),
(347, 33, '2014-12-17 03:00:00', 4, 6, 'нет'),
(348, 45, '2014-12-17 05:00:00', 3, 3, 'нет'),
(349, 25, '2014-12-19 05:00:00', 3, 5, 'да'),
(350, 18, '2014-12-19 05:20:00', 4, 6, 'нет'),
(351, 23, '2014-12-19 05:40:00', 4, 3, 'да'),
(352, 53, '2014-12-20 04:20:00', 2, 4, 'нет'),
(353, 27, '2014-12-21 02:40:00', 1, 4, 'нет'),
(354, 10, '2014-12-21 04:20:00', 2, 6, 'да'),
(355, 16, '2014-12-21 05:20:00', 3, 5, 'да'),
(356, 51, '2014-12-23 02:40:00', 1, 4, 'да'),
(357, 32, '2014-12-24 05:40:00', 4, 5, 'да'),
(358, 37, '2014-12-25 04:20:00', 3, 6, 'да'),
(359, 26, '2014-12-27 02:40:00', 1, 3, 'нет'),
(360, 27, '2014-12-27 05:40:00', 1, 5, 'да'),
(361, 17, '2014-12-29 04:40:00', 4, 4, 'да'),
(362, 1, '2014-12-30 04:20:00', 3, 5, 'да'),
(363, 27, '2014-12-31 02:40:00', 2, 6, 'да'),
(364, 19, '2014-12-31 04:40:00', 4, 6, 'нет'),
(365, 40, '2015-01-01 02:40:00', 3, 3, 'нет'),
(366, 5, '2015-01-01 04:00:00', 1, 5, 'нет'),
(367, 41, '2015-01-03 06:00:00', 1, 5, 'да'),
(368, 48, '2015-01-05 03:40:00', 3, 3, 'да'),
(369, 1, '2015-01-05 05:20:00', 2, 6, 'нет'),
(370, 54, '2015-01-07 06:00:00', 2, 5, 'да'),
(371, 4, '2015-01-10 02:40:00', 3, 5, 'нет'),
(372, 8, '2015-01-14 02:40:00', 4, 4, 'нет'),
(373, 34, '2015-01-15 04:00:00', 3, 5, 'да'),
(374, 31, '2015-01-15 05:40:00', 4, 5, 'нет'),
(375, 55, '2015-01-16 03:00:00', 3, 4, 'нет'),
(376, 27, '2015-01-18 04:40:00', 4, 6, 'нет'),
(377, 27, '2015-01-19 03:40:00', 2, 4, 'нет'),
(378, 56, '2015-01-20 03:20:00', 4, 3, 'да'),
(379, 37, '2015-01-20 03:40:00', 1, 6, 'нет'),
(380, 56, '2015-01-20 04:20:00', 2, 5, 'да'),
(381, 14, '2015-01-21 04:00:00', 4, 3, 'да'),
(382, 8, '2015-01-24 03:40:00', 3, 4, 'да'),
(383, 7, '2015-01-24 05:20:00', 3, 6, 'да'),
(384, 18, '2015-01-25 06:20:00', 3, 5, 'да'),
(385, 28, '2015-01-29 02:40:00', 3, 4, 'нет'),
(386, 32, '2015-01-29 05:40:00', 1, 5, 'нет'),
(387, 16, '2015-01-29 06:20:00', 3, 5, 'да'),
(388, 3, '2015-01-31 04:20:00', 2, 5, 'да'),
(389, 16, '2015-01-31 06:00:00', 4, 3, 'да'),
(390, 20, '2015-02-02 03:00:00', 4, 4, 'нет'),
(391, 17, '2015-02-02 03:20:00', 3, 4, 'нет'),
(392, 27, '2015-02-02 04:20:00', 2, 5, 'нет'),
(393, 1, '2015-02-04 02:40:00', 4, 6, 'нет'),
(394, 21, '2015-02-04 03:00:00', 4, 3, 'да'),
(395, 4, '2015-02-04 04:20:00', 3, 4, 'да'),
(396, 47, '2015-02-04 04:20:00', 4, 5, 'да'),
(397, 29, '2015-02-04 06:20:00', 1, 5, 'нет'),
(398, 30, '2015-02-06 03:00:00', 2, 6, 'да'),
(399, 20, '2015-02-09 06:20:00', 3, 4, 'да'),
(400, 27, '2015-02-11 06:20:00', 1, 4, 'нет'),
(401, 2, '2015-02-13 02:40:00', 1, 5, 'нет'),
(402, 39, '2015-02-13 04:40:00', 4, 3, 'да'),
(403, 54, '2015-02-15 05:40:00', 4, 3, 'нет'),
(404, 5, '2015-02-17 06:00:00', 3, 5, 'нет'),
(405, 21, '2015-02-18 05:20:00', 4, 4, 'да'),
(406, 50, '2015-02-19 02:40:00', 2, 3, 'нет'),
(407, 32, '2015-02-19 03:00:00', 2, 5, 'да'),
(408, 56, '2015-02-19 04:40:00', 2, 5, 'нет'),
(409, 11, '2015-02-19 05:40:00', 1, 5, 'нет'),
(410, 40, '2015-02-20 06:00:00', 2, 6, 'да'),
(411, 32, '2015-02-24 03:40:00', 2, 5, 'да'),
(412, 23, '2015-02-26 04:20:00', 1, 3, 'нет'),
(413, 30, '2015-02-26 06:20:00', 4, 5, 'да'),
(414, 33, '2015-02-27 03:00:00', 1, 4, 'нет'),
(415, 4, '2015-02-28 03:20:00', 3, 5, 'нет'),
(416, 5, '2015-03-01 06:00:00', 3, 4, 'нет'),
(417, 56, '2015-03-02 05:00:00', 1, 4, 'нет'),
(418, 40, '2015-03-04 03:00:00', 2, 3, 'нет'),
(419, 3, '2015-05-14 13:52:04', 3, 4, ''),
(420, 3, '2015-05-14 13:52:04', 4, 4, ''),
(421, 1, '2015-05-14 13:52:04', 1, 3, '12');

-- 
-- Вывод данных для таблицы holiday
--
INSERT INTO holiday VALUES
(1, 4, '2014-05-08', '2014-05-30'),
(2, 3, '2015-06-04', '2015-05-05');

DELIMITER $$

--
-- Описание для триггера set_password
--
CREATE 
	DEFINER = 'root'@'localhost'
TRIGGER set_password
	BEFORE INSERT
	ON users
	FOR EACH ROW
BEGIN
  SET NEW.password = password(NEW.password);
END
$$

--
-- Описание для триггера set_upd_passw
--
CREATE 
	DEFINER = 'root'@'localhost'
TRIGGER set_upd_passw
	BEFORE UPDATE
	ON users
	FOR EACH ROW
BEGIN
   SET NEW.password = password(NEW.password);
END
$$

--
-- Описание для триггера update_patient_stat
--
CREATE 
	DEFINER = 'root'@'localhost'
TRIGGER update_patient_stat
	BEFORE UPDATE
	ON patients_stat
	FOR EACH ROW
BEGIN
  
  SET @new_day = dayofyear(old.date_on);
  SET @new_day2 = dayofyear(new.date_off);
  IF @new_dayIS is NOT NULL  and NEW.period_days IS   NULL THEN
  SET NEW.period_days = (@new_day2 - @new_day+1);
 END IF;
END
$$

DELIMITER ;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;