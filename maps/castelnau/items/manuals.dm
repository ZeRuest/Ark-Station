/obj/item/weapon/folder/envelope/blanks
	desc = "A thick envelope. The Nanotrasen logo is stamped in the corner, along with 'CONFIDENTIAL'."

/obj/item/weapon/folder/envelope/blanks/Initialize()
	. = ..()
	new/obj/item/weapon/paper/blanks(src)

/obj/item/weapon/paper/blanks
	name = "RE: Regarding testing supplies"
	info = {"
	<tt><center><b><font color='red'>CONFIDENTIAL: UPPER MANAGEMENT ONLY</font></b>
	<h3>NANOTRASEN RESEARCH DIVISION</h3>
	<img src = ntlogo.png>
	</center>
	<b>FROM:</b> Hieronimus Blackstone, Overseer of sierra Cooperation Project<br>
	<b>TO:</b> Research Director of NES Sierra branch<br>
	<b>CC:</b> Liason with SCG services aboard NES Sierra<br>
	<b>SUBJECT:</b> RE: Testing Materials<br>
	<hr>
	We have reviewed your request, and would like to make an addition to the list of needed materials.<br>
	As we hold very high hopes for this branch, it would be only right to provide our scientists with the most accurate testing environment. And by that we mean the living human subjects. Our Ethics Review Board suggested a workaround for that pesky 'consent' requierment.<br>
	In the Research Wing you should find a small section labeled 'Aux Custodial Supplies'. Inside we have provided several mind-blank vatgrown clones. Our Law Special Response Team so far had not found SCG legislation that explicitly forbids their use in research.<br>
	They come in self-contained life support bags, with additional measures to make them easier to use for, let's say, more sensitive personnel. As our preliminary study showed, 75% more subjects were more willing to harm a (consenting) intern if their face was fully hidden.<br>
	We are expecting great results from this program. Do not disappoint us.<br>
	<i>H.B.</i></tt>
	"}

/obj/item/weapon/paper/liason_note
	name = "note"
	info = {"
	<i>First - pill, second - bullet. No surrender.<br>
	H.B.</i>
	"}

/obj/item/weapon/folder/envelope/captain
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - sierra UMBRA'."

/obj/item/weapon/folder/envelope/captain/Initialize()
	. = ..()
	var/obj/effect/overmap/sierra = map_sectors["[z]"]
	var/memo = {"
	<tt><center><b><font color='red'>SECRET - CODE WORDS: sierra</font></b>
	<h3>SOL CENTRAL GOVERNMENT EXPEDITIONARY COMMAND</h3>
	<img src = sollogo.png>
	</center>
	<b>FROM:</b> ADM William Lau<br>
	<b>TO:</b> Commanding Officer of NES Sierra<br>
	<b>SUBJECT:</b> Standing Orders<br>
	<hr>
	Captain.<br>
	Your orders are to visit the following star systems. Keep in mind that your supplies are limited; ration exploration time accordingly.
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[GLOB.using_map.system_name]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<br>
	Priority targets are artifacts of uncontacted alien species and signal sources of unknown origin.<br>
	None of these systems are claimed by any entity recognized by the SCG, so you have full salvage rights on any derelicts discovered.<br>
	Investigate and mark any prospective colony worlds as per usual procedures.<br>
	There is no SCG presence in that area. In case of distress calls, you will be the only vessel available; do not ignore them. We cannot afford any more PR backlash.<br>
	The current docking code is: [sierra.docking_codes]<br>
	Report all findings via bluespace comm buoys during inter-system jumps.<br>

	<i>ADM Lau.</i></tt>
	<i>This paper has been stamped with the stamp of SCG Expeditionary Command.</i>
	"}
	new/obj/item/weapon/paper(src, memo, "Standing Orders")

	new/obj/item/weapon/paper/umbra(src)

/obj/item/weapon/folder/envelope/rep
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - UMBRA'."

/obj/item/weapon/folder/envelope/rep/Initialize()
	. = ..()
	new/obj/item/weapon/paper/umbra(src)

/obj/item/weapon/paper/umbra
	name = "UMBRA Protocol"
	info = {"
	<tt><center><b><font color='red'>TOP SECRET - CODE WORDS: sierra UMBRA</font></b>
	<h3>OFFICE OF THE SECRETARY GENERAL OF SOL CENTRAL GOVERNMENT</h3>
	<img src = sollogo.png>
	</center>
	<b>FROM:</b> Johnathan Smitherson, Special Aide of the Secretary General<br>
	<b>TO:</b> Commanding Officer of the NES Sierra<br>
	<b>CC:</b> Special Representative aboard the NES Sierra<br>
	<b>SUBJECT:</b> UMBRA protocol<br>
	<hr>
	This is a small addendum to the usual operating procedures. Unlike the rest of SOP, this is not left to the Commanding Officer's discretion and is mandatory. As unconventional as this is, we felt it is essential for smooth operation of this mission.<br>
	Procedure can be initiated only by transmission from SCG Expeditionary Command via secure channel. The sender may not introduce themselves, but you shouldn't have trouble confirming the transmission source, I believe.<br>
	The signal to initiate the procedure are codewords 'GOOD NIGHT WORLD' used in this order as one phrase. You do not need to send acknowledgement.
	<li>Information about this expedition's findings is to be treated as secret and vital to SCG's national security, and is protected under codeword UMBRA. Only SCG government employees, NT personnel and Skrell citizens aboard the NES Sierra are allowed access to this information on a need-to-know basis.</li>
	<li>The secrecy of this information is to be applied retroactively. Any non-cleared personnel who were exposed to such information are to be secured and transferred to DIA on arrival at home port.</li>
	<li>Any devices capable of transmitting data on interstellar range are to be confiscated from private possession.</li>
	<li>Disregard any systems remaining in your flight plan and set course for Sol, Neptune orbit. You will be contacted upon your arrival. Do not make stops in ports on the way unless absolutely necessary.</li>
	<br>
	While drastic, I assure you this is a simple precaution, lest any issues. Just keep the option open, and carry on with your normal duties.
	<i>Regards, John.</i></tt>
	<i>This paper has been stamped with the stamp of Office of the General Secretary of SCG.</i>
	"}

/obj/item/weapon/book/manual/reactor
	name = "Reactor Operating Manual"
	desc = "The manual for GCR-H 1000 installed at MOTV Castelnau."
	icon_state = "bookSupermatter"
	author = "Friendly Atom Power Solutions, ltd. 2298"
	title = "GCR-H 1000 Operating Manual"
	dat = {"Содержание:
	- Общая информация
	- Принципы работы
	- Системы безопасности
	- АВАРИЙНЫЕ ПРОЦЕДУРЫ
	- Обычные процедуры
	- Дополнения

	Общая информация

	GCR-H 1000 - это универсальный двухконтурный миниатюрный ядерный реактор с газовым охлаждением, использующий газообразный водород в качестве теплоносителя, с расчётной мощностью до 1000 кВт.
	Данная модель реактора адаптирована для работы на множестве видов ядерного топлива с различной степенью обогащения.

	Технические характеристики:
	- масса системы: 30 тонн
	- максимальная мощность: 1000кВт электрическая, 1500кВт тепловая
	- потребление энергии системой: до 150кВт
	- максимальное рабочее давление: 13000кПа
	- максимальная рабочая температура: 4000К
	- максимально допустимое давление:15000кПа
	- максимально допустимая температура: 5000К
	- количество топливных элементов: 4
	- количество блоков стержней управления: 5
	- количество генераторов энергии: 2

	Принципы работы

	Система базируется на преобразовании тепловой энергии в электрическую энергию. Основным источником тепловой энергии в ядерном реакторе GCR-H 1000 является контролируемая цепная реакция
	ядерного распада в топливных элементах активной зоны. На реакторах типа GCR-H 1000 установлено 4 топливных элемента. Используемые в них изотопы являются нестабильными элементами, временами
	выделяющими нейтроны. Нейтрон, в случае контакта с другим ядром нестабильного элемента, как правило, приводит к его распаду и выделению большого объёма тепловой энергии, а также новых нейтронов,
	которые ращепляют другие атомы. Такая цепная реакция управляется с помощью боровых контрольных стержней, которые поглащают нейтроны прежде, чем те вступят во взаимодействие с другим топливным
	элементом. Чем больше эффективная длина стержня, поднятого в активную зону, тем больше поглощение нейтронов. При достижении максимальной эффективной длины (4м на GCR-H 1000), почти весь поток
	нейтронов между топливными элементами блокируется. Радиоактивности одного отдельно взятого элемента топливного недостаточно для поддержания в нём цепной реакции. Таким образом, полностью
	выпущенные контрольные стержни провоцируют остановку реактора. Следует помнить, что полностью опущенные стержни означают отсутствие контроля над цепной реакцией. Бесконтрольная ядерная
	реакция в активной зоне неизбежно приведёт к перегреву, расплавлению и взрывной декомпрессии топливных элементов с последующим нарушением целостности и радиоактивным заражением как активной
	зоны реактора, так и прилегающих зон.

	Тепло, создаваемое активной зоной реактора, отводится по главному контуру с помощью 2 пар инжекторов и помп - циркуляционных насосов 1 и 2.С их помощью газообразный водород, являющийся
	теплоносителем, активно проходит сквозь реактор. Нагретый водород следует по главному контуру до термоэлектрического генератора (в модели GCR-H 1000 установлено 2 генератора), где
	тепловая и кинетическая энергия нагретого газа превращается в электрическую с помощью комбинированного процесса трансформации. Максимальная суммарная электрическая расчётная мощность генераторов - 1мВт.
	В это время газообразный водород в главном контуре охлаждается, а далее возвращается в активную зону. Тепло же отводится на охлаждающий контур, функционирующий с помощью 2 пар циркуляционных
	насосов перед и после термоэлектрических генераторов. Разогретый газ охлаждающего контура перемещается в радиаторы, рассеивающие тепловую энергию в космос, замыкая цепь работы реактора.

	<IMG>

	Системы безопасности

	На случай нештатных ситуаций, в реакторе предусмотрены 3 системы безопасности.

	1. Система аварийного охладения
	Состоит из 2 вентелей, которые соединяют между собой главный контур и контур охлаждения. В штатном рабочем режиме они закрыты, но в аварийной ситуации могут быть открыты с помощью кнопки
	"АВАРИЙНОЕ ОХЛАЖДЕНИЕ РЕАКТОРА" или вручную путём открытия вентелей, объеденяя два контура в один, тем самым повышая эффективность охлаждения теплоносителя. Термоэлектрические генераторы при этом
	почти полностью прекращают свою работу и более не востребованы для охлаждения. Аварийное охлаждение может быть отключено повторным нажатием кнопки, либо ручным закрытием вентелей.

	2. Система пассивного аварийного охлаждения
	Состоит из 2 баков с диоксидом углерода и 2 соответствующих пассивных регуляторов, связанных с главным контуром. Предназначена для пассивного аварийного поддержания давления в главном контуре
	реактора в случае утечки теплоносителя. При правильной настройке, пассивные регуляторы самостоятельно определят критически низкое давление в системе и откроют вентили, по которым начнёт поступать
	аварийный теплоноситель под давлением. Запас диокседа углероды очень ограничен, поэтому включение системы требует немедленных действий по устранению проблемы от обслуживающего персонала.

	3. Ручные вентили аварийного сброса давления в контурах
	Состоит из 2 ручных вентелей, соответствующих главному и охлаждающему контурам, которые могут применяться раздельно (для сброса давления в одном контуре) или совместно (для снижения давления во всей
	системе). Максимально допустимое давление в любом контуре реактора - 15000кПа. В случае превышения этого давления, циркуляционные насосы прекратят работу, остановив охлаждение реактора. Система
	сброса давления может быть применена в такой ситуации для предотвращения аварии.


	АВАРИЙНЫЕ ПРОЦЕДУРЫ

	X Опасно высокая температура элемента активной зоны / Неожиданное повышение активности
	- контрольные стержни - ПОЛНОСТЬЮ ВЫПУСТИТЬ (4м)
	- аварийное охлаждение - ВКЛЮЧИТЬ

	(если активность реактора продолжает расти после полного выпуска контрольных стержней)
	- ЭВАКУИРОВАТЬСЯ

	(если температура продолжает расти)
	- циркуляционные насосы активной зоны 1, 2 - ПРОВЕРИТЬ, МАКСИМАЛЬНАЯ МОЩНОСТЬ
	- аварийная система пассивного охлаждения - ВКЛЮЧИТЬ ВРУЧНУЮ
	- люки вентиляции реактора - ОТКРЫТЬ
	- дополнительный теплоноситель в главный контур - ВВЕСТИ

	(если температура продолжает расти)
	- ЭВАКУИРОВАТЬСЯ

	X Нарушение целостности контура(ов) и(или) гермооболочки активной зоны / Низкое давление в контуре(ах)
	- контрольные стержни - ПОЛНОСТЬЮ ВЫПУСТИТЬ (4м)
	- аварийное охлаждение - ВКЛЮЧИТЬ
	- аварийная система пассивного охлаждения - ВКЛЮЧИТЬ ВРУЧНУЮ
	- циркуляционные насосы активной зоны 1, 2 - ПРОВЕРИТЬ, МАКСИМАЛЬНАЯ МОЩНОСТЬ

	(если температура продолжает расти)
	- люки вентиляции реактора - ОТКРЫТЬ
	- дополнительный теплоноситель в главный контур - ВВЕСТИ

	- УСТРАНИТЬ ТЕЧЬ

	(если температура продолжает расти)
	- ЭВАКУИРОВАТЬСЯ

	X Высокое давление в контуре(ах)
	- контрольные стержни - ПОЛНОСТЬЮ ВЫПУСТИТЬ (4м)
	- аварийное охлаждение - ВКЛЮЧИТЬ
	- циркуляционные насосы активной зоны 1, 2 - ПРОВЕРИТЬ, МАКСИМАЛЬНАЯ МОЩНОСТЬ
	- ручные вентили сброса давления - ОТКРЫТЬ

	(если температура продолжает расти)
	- люки вентиляции реактора - ОТКРЫТЬ

	(если температура продолжает расти)
	- ЭВАКУИРОВАТЬСЯ

	Обычные процеруды

	1. Перед запуском
	- топливные стержни - ПРОВЕРИТЬ
	- контрольные стержни - ПРОВЕРИТЬ
	- циркуляционные насосы активной зоны - ПРОВЕРИТЬ
	- циркуляционные насосы контуров - ПРОВЕРИТЬ, ВКЛЮЧИТЬ
	- термоэлектрические генераторы - ПРОВЕРИТЬ
	- питание, запас энергии - ПРОВЕРИТЬ
	- фильтрмация главного контура - ПРОВЕРИТЬ, ВОДОРОД*
	- теплоноситель в контуры - ВВЕСТИ, ВОДОРОД*


	* - допускается использование другого газа при необходимости

	2. Погрузка топлива
	- контрольные стержни - ПОЛНОСТЬЮ ВЫПУСТИТЬ (4м)
	- радиационная защита реактора - ОПУСТИТЬ
	- топливные элементы в топливные стердни - ПОМЕСТИТЬ
	- активная зона - ИЗОЛИРОВАТЬ

	3. Запуск
	- люки вентиляции реактора - ОТКРЫТЬ НА 10 СЕКУНД
	- давление в активной зоне - ПРОВЕРИТЬ, ОТСУТСТВУЕТ
	- люки вентиляции реактора - ПРОВЕРИТЬ, ЗАКРЫТЫ
	- циркуляционные насосы активной зоны 1, 2 - ВКЛЮЧИТЬ, МАКСИМАЛЬНАЯ МОЩНОСТЬ
	- давление в активной зоне - ПРОВЕРИТЬ, СТАБИЛИЗИРОВАНО
	- контрольные стержни - КОНТРОЛИРУЕМЫЙ СПУСК, АКТИВНОЕ УПРАВЛЕНИЕ РЕАКТИВНОСТЬЮ
	- термоэлектрические генераторы - ПРОВЕРИТЬ
	- питание - ПРОВЕРИТЬ

	4. Остановка
	- контрольные стержни - ПОЛНОСТЬЮ ВЫПУСТИТЬ (4м)
	- циркуляционные насосы активной зоны 1, 2 - ПРОВЕРИТЬ, МАКСИМАЛЬНАЯ МОЩНОСТЬ
	- аварийное охлаждение - ВКЛЮЧИТЬ

	(после снижения температуры активной зоны до 300-320К и реактивности до 0)
	- циркуляционные насосы активной зоны 1, 2 - ВЫКЛЮЧИТЬ*
	- *(для длительной остановки с загруженным топливом) циркуляционный насос активной зоны 1 или 2 - ВКЛЮЧИТЬ, ОПЦИОНАЛЬНАЯ МОЩНОСТЬ
	- циркуляционные насосы контуров - ОТКЛЮЧИТЬ

	5. Замена топливных элементов
	- контрольные стержни - ПРОВЕРИТЬ, ПОЛНОСТЬЮ ВЫПУЩЕНЫ (4м)
	- реактивность топливных стержней - ПРОВЕРИТЬ, 0
	- температура топливных стержней - ПРОВЕРИТЬ, <320К
	- циркуляционные насосы активной зоны 1, 2 - ВПРЫСК ОТКЛЮЧИТЬ, ЗАБОР МАКСИМАЛЬНАЯ МОЩНОСТЬ НА 5 МИНУТ
	- циркуляционные насосы активной зоны 1, 2 - ВЫКЛЮЧИТЬ
	- люки вентиляции реактора - ОТКРЫТЬ НА 10 СЕКУНД
	- люки вентиляции реактора - ПРОВЕРИТЬ, ЗАКРЫТЫ
	- замена топливных элементов - ПРОИЗВЕСТИ*
	* - ОПАСНОСТЬ СИЛЬНОГО ПОТОКА ВОЗДУХА ПРИ ОТКРЫТИИ ВНУТРЕННИХ ЛЮКОВ АКТИВНОЙ ЗОНЫ

	Дополнения

	X Техника управления реактором
	Цепная ядерная реакция - нестабильный по своей сути физический процесс. Любое увеличение или снижение реактивности топливных стержней будет прогрессировать экспоненциально без проактивного контроля
	обслуживающего персонала.

	Управление GCR-H 1000 делится на глобальное (одновременная установка длины всех контрольных стержней) и локальное (установка длины отдельно взятого контрольного стержня). Глобальное управление
	эффективно для задания общей скорости течения реакции, а также относительно быстрого её подавления в случае необходимости. Локальное управление удобно для точного проактивного контроля случайных
	всплесков и спадов реакции.

	При управлении реактором необходимо учитывать, что скорость движения контрольных стержней ограничена. Полный выход стержней в активную зону (0-4м) занимает 80 секунд. Таким образом, управление
	достаточно инертно. Если не среагировать вовремя при всплеске реактивности, то GCR-H 1000 может выйти на необратимое увеличение реактивности топливных элементов с последующим перегревом, расплавлением
	или взрывной декомпрессией.

	X Выбор топлива
	GCR-H 1000 тестировался с 3 основными видами ядерного топлива: U-235, Pu-239 и Th-232.

	X U-235
	Природный U-235 неизбежно смешан с U-238. В отличии от U-235, U-238 не подвержен распаду и поглощает нейтрон, препятствуя, таким образом, течению реакции. Соотношение U-235/вся смесь является степенью
	обогащения урана. Технически, использование U-235 возможно с любой степенью обогащения. При этом, целесообразно применение минимум 20%-обогащённого урана. Использование высокообогащённого урана должно
	иметь место только при низком его количестве. Не зря такой уран нашёл применение в ядерном оружии. Тем не менее, отдел продаж Friendly Aton, ltd. с радостью удовлетворит любое Ваше пожаление в этом плане.

	X Pu-239

	"}