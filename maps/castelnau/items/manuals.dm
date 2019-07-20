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
	dat = {"—одержание:
	- ќбща€ информаци€
	- ѕринципы работы
	- —истемы безопасности
	- ј¬ј–»…Ќџ≈ ѕ–ќ÷≈ƒ”–џ
	- ќбычные процедуры
	- ƒополнени€

	ќбща€ информаци€

	GCR-H 1000 - это универсальный двухконтурный миниатюрный €дерный реактор с газовым охлаждением, использующий газообразный водород в качестве теплоносител€, с расчЄтной мощностью до 1000 к¬т.
	ƒанна€ модель реактора адаптирована дл€ работы на множестве видов €дерного топлива с различной степенью обогащени€.

	“ехнические характеристики:
	- масса системы: 30 тонн
	- максимальна€ мощность: 1000к¬т электрическа€, 1500к¬т теплова€
	- потребление энергии системой: до 150к¬т
	- максимальное рабочее давление: 13000кѕа
	- максимальна€ рабоча€ температура: 4000 
	- максимально допустимое давление:15000кѕа
	- максимально допустима€ температура: 5000 
	- количество топливных элементов: 4
	- количество блоков стержней управлени€: 5
	- количество генераторов энергии: 2

	ѕринципы работы

	—истема базируетс€ на преобразовании тепловой энергии в электрическую энергию. ќсновным источником тепловой энергии в €дерном реакторе GCR-H 1000 €вл€етс€ контролируема€ цепна€ реакци€
	€дерного распада в топливных элементах активной зоны. Ќа реакторах типа GCR-H 1000 установлено 4 топливных элемента. »спользуемые в них изотопы €вл€ютс€ нестабильными элементами, временами
	выдел€ющими нейтроны. Ќейтрон, в случае контакта с другим €дром нестабильного элемента, как правило, приводит к его распаду и выделению большого объЄма тепловой энергии, а также новых нейтронов,
	которые ращепл€ют другие атомы. “ака€ цепна€ реакци€ управл€етс€ с помощью боровых контрольных стержней, которые поглащают нейтроны прежде, чем те вступ€т во взаимодействие с другим топливным
	элементом. „ем больше эффективна€ длина стержн€, подн€того в активную зону, тем больше поглощение нейтронов. ѕри достижении максимальной эффективной длины (4м на GCR-H 1000), почти весь поток
	нейтронов между топливными элементами блокируетс€. –адиоактивности одного отдельно вз€того элемента топливного недостаточно дл€ поддержани€ в нЄм цепной реакции. “аким образом, полностью
	выпущенные контрольные стержни провоцируют остановку реактора. —ледует помнить, что полностью опущенные стержни означают отсутствие контрол€ над цепной реакцией. Ѕесконтрольна€ €дерна€
	реакци€ в активной зоне неизбежно приведЄт к перегреву, расплавлению и взрывной декомпрессии топливных элементов с последующим нарушением целостности и радиоактивным заражением как активной
	зоны реактора, так и прилегающих зон.

	“епло, создаваемое активной зоной реактора, отводитс€ по главному контуру с помощью 2 пар инжекторов и помп - циркул€ционных насосов 1 и 2.— их помощью газообразный водород, €вл€ющийс€
	теплоносителем, активно проходит сквозь реактор. Ќагретый водород следует по главному контуру до термоэлектрического генератора (в модели GCR-H 1000 установлено 2 генератора), где
	теплова€ и кинетическа€ энерги€ нагретого газа превращаетс€ в электрическую с помощью комбинированного процесса трансформации. ћаксимальна€ суммарна€ электрическа€ расчЄтна€ мощность генераторов - 1м¬т.
	¬ это врем€ газообразный водород в главном контуре охлаждаетс€, а далее возвращаетс€ в активную зону. “епло же отводитс€ на охлаждающий контур, функционирующий с помощью 2 пар циркул€ционных
	насосов перед и после термоэлектрических генераторов. –азогретый газ охлаждающего контура перемещаетс€ в радиаторы, рассеивающие тепловую энергию в космос, замыка€ цепь работы реактора.

	<IMG>

	—истемы безопасности

	Ќа случай нештатных ситуаций, в реакторе предусмотрены 3 системы безопасности.

	1. —истема аварийного охладени€
	—остоит из 2 вентелей, которые соедин€ют между собой главный контур и контур охлаждени€. ¬ штатном рабочем режиме они закрыты, но в аварийной ситуации могут быть открыты с помощью кнопки
	"ј¬ј–»…Ќќ≈ ќ’Ћј∆ƒ≈Ќ»≈ –≈ј “ќ–ј" или вручную путЄм открыти€ вентелей, объеден€€ два контура в один, тем самым повыша€ эффективность охлаждени€ теплоносител€. “ермоэлектрические генераторы при этом
	почти полностью прекращают свою работу и более не востребованы дл€ охлаждени€. јварийное охлаждение может быть отключено повторным нажатием кнопки, либо ручным закрытием вентелей.

	2. —истема пассивного аварийного охлаждени€
	—остоит из 2 баков с диоксидом углерода и 2 соответствующих пассивных регул€торов, св€занных с главным контуром. ѕредназначена дл€ пассивного аварийного поддержани€ давлени€ в главном контуре
	реактора в случае утечки теплоносител€. ѕри правильной настройке, пассивные регул€торы самосто€тельно определ€т критически низкое давление в системе и откроют вентили, по которым начнЄт поступать
	аварийный теплоноситель под давлением. «апас диокседа углероды очень ограничен, поэтому включение системы требует немедленных действий по устранению проблемы от обслуживающего персонала.

	3. –учные вентили аварийного сброса давлени€ в контурах
	—остоит из 2 ручных вентелей, соответствующих главному и охлаждающему контурам, которые могут примен€тьс€ раздельно (дл€ сброса давлени€ в одном контуре) или совместно (дл€ снижени€ давлени€ во всей
	системе). ћаксимально допустимое давление в любом контуре реактора - 15000кѕа. ¬ случае превышени€ этого давлени€, циркул€ционные насосы прекрат€т работу, остановив охлаждение реактора. —истема
	сброса давлени€ может быть применена в такой ситуации дл€ предотвращени€ аварии.


	ј¬ј–»…Ќџ≈ ѕ–ќ÷≈ƒ”–џ

	X ќпасно высока€ температура элемента активной зоны / Ќеожиданное повышение активности
	- контрольные стержни - ѕќЋЌќ—“№ё ¬џѕ”—“»“№ (4м)
	- аварийное охлаждение - ¬ Ћё„»“№

	(если активность реактора продолжает расти после полного выпуска контрольных стержней)
	- Ё¬ј ”»–ќ¬ј“№—я

	(если температура продолжает расти)
	- циркул€ционные насосы активной зоны 1, 2 - ѕ–ќ¬≈–»“№, ћј —»ћјЋ№Ќјя ћќўЌќ—“№
	- аварийна€ система пассивного охлаждени€ - ¬ Ћё„»“№ ¬–”„Ќ”ё
	- люки вентил€ции реактора - ќ“ –џ“№
	- дополнительный теплоноситель в главный контур - ¬¬≈—“»

	(если температура продолжает расти)
	- Ё¬ј ”»–ќ¬ј“№—я

	X Ќарушение целостности контура(ов) и(или) гермооболочки активной зоны / Ќизкое давление в контуре(ах)
	- контрольные стержни - ѕќЋЌќ—“№ё ¬џѕ”—“»“№ (4м)
	- аварийное охлаждение - ¬ Ћё„»“№
	- аварийна€ система пассивного охлаждени€ - ¬ Ћё„»“№ ¬–”„Ќ”ё
	- циркул€ционные насосы активной зоны 1, 2 - ѕ–ќ¬≈–»“№, ћј —»ћјЋ№Ќјя ћќўЌќ—“№

	(если температура продолжает расти)
	- люки вентил€ции реактора - ќ“ –џ“№
	- дополнительный теплоноситель в главный контур - ¬¬≈—“»

	- ”—“–јЌ»“№ “≈„№

	(если температура продолжает расти)
	- Ё¬ј ”»–ќ¬ј“№—я

	X ¬ысокое давление в контуре(ах)
	- контрольные стержни - ѕќЋЌќ—“№ё ¬џѕ”—“»“№ (4м)
	- аварийное охлаждение - ¬ Ћё„»“№
	- циркул€ционные насосы активной зоны 1, 2 - ѕ–ќ¬≈–»“№, ћј —»ћјЋ№Ќјя ћќўЌќ—“№
	- ручные вентили сброса давлени€ - ќ“ –џ“№

	(если температура продолжает расти)
	- люки вентил€ции реактора - ќ“ –џ“№

	(если температура продолжает расти)
	- Ё¬ј ”»–ќ¬ј“№—я

	ќбычные процеруды

	1. ѕеред запуском
	- топливные стержни - ѕ–ќ¬≈–»“№
	- контрольные стержни - ѕ–ќ¬≈–»“№
	- циркул€ционные насосы активной зоны - ѕ–ќ¬≈–»“№
	- циркул€ционные насосы контуров - ѕ–ќ¬≈–»“№, ¬ Ћё„»“№
	- термоэлектрические генераторы - ѕ–ќ¬≈–»“№
	- питание, запас энергии - ѕ–ќ¬≈–»“№
	- фильтрмаци€ главного контура - ѕ–ќ¬≈–»“№, ¬ќƒќ–ќƒ*
	- теплоноситель в контуры - ¬¬≈—“», ¬ќƒќ–ќƒ*


	* - допускаетс€ использование другого газа при необходимости

	2. ѕогрузка топлива
	- контрольные стержни - ѕќЋЌќ—“№ё ¬џѕ”—“»“№ (4м)
	- радиационна€ защита реактора - ќѕ”—“»“№
	- топливные элементы в топливные стердни - ѕќћ≈—“»“№
	- активна€ зона - »«ќЋ»–ќ¬ј“№

	3. «апуск
	- люки вентил€ции реактора - ќ“ –џ“№ Ќј 10 —≈ ”Ќƒ
	- давление в активной зоне - ѕ–ќ¬≈–»“№, ќ“—”“—“¬”≈“
	- люки вентил€ции реактора - ѕ–ќ¬≈–»“№, «ј –џ“џ
	- циркул€ционные насосы активной зоны 1, 2 - ¬ Ћё„»“№, ћј —»ћјЋ№Ќјя ћќўЌќ—“№
	- давление в активной зоне - ѕ–ќ¬≈–»“№, —“јЅ»Ћ»«»–ќ¬јЌќ
	- контрольные стержни -  ќЌ“–ќЋ»–”≈ћџ… —ѕ”— , ј “»¬Ќќ≈ ”ѕ–ј¬Ћ≈Ќ»≈ –≈ј “»¬Ќќ—“№ё
	- термоэлектрические генераторы - ѕ–ќ¬≈–»“№
	- питание - ѕ–ќ¬≈–»“№

	4. ќстановка
	- контрольные стержни - ѕќЋЌќ—“№ё ¬џѕ”—“»“№ (4м)
	- циркул€ционные насосы активной зоны 1, 2 - ѕ–ќ¬≈–»“№, ћј —»ћјЋ№Ќјя ћќўЌќ—“№
	- аварийное охлаждение - ¬ Ћё„»“№

	(после снижени€ температуры активной зоны до 300-320  и реактивности до 0)
	- циркул€ционные насосы активной зоны 1, 2 - ¬џ Ћё„»“№*
	- *(дл€ длительной остановки с загруженным топливом) циркул€ционный насос активной зоны 1 или 2 - ¬ Ћё„»“№, ќѕ÷»ќЌјЋ№Ќјя ћќўЌќ—“№
	- циркул€ционные насосы контуров - ќ“ Ћё„»“№

	5. «амена топливных элементов
	- контрольные стержни - ѕ–ќ¬≈–»“№, ѕќЋЌќ—“№ё ¬џѕ”ў≈Ќџ (4м)
	- реактивность топливных стержней - ѕ–ќ¬≈–»“№, 0
	- температура топливных стержней - ѕ–ќ¬≈–»“№, <320 
	- циркул€ционные насосы активной зоны 1, 2 - ¬ѕ–џ—  ќ“ Ћё„»“№, «јЅќ– ћј —»ћјЋ№Ќјя ћќўЌќ—“№ Ќј 5 ћ»Ќ”“
	- циркул€ционные насосы активной зоны 1, 2 - ¬џ Ћё„»“№
	- люки вентил€ции реактора - ќ“ –џ“№ Ќј 10 —≈ ”Ќƒ
	- люки вентил€ции реактора - ѕ–ќ¬≈–»“№, «ј –џ“џ
	- замена топливных элементов - ѕ–ќ»«¬≈—“»*
	* - ќѕј—Ќќ—“№ —»Ћ№Ќќ√ќ ѕќ“ќ ј ¬ќ«ƒ”’ј ѕ–» ќ“ –џ“»» ¬Ќ”“–≈ЌЌ»’ Ћё ќ¬ ј “»¬Ќќ… «ќЌџ

	ƒополнени€

	X “ехника управлени€ реактором
	÷епна€ €дерна€ реакци€ - нестабильный по своей сути физический процесс. Ћюбое увеличение или снижение реактивности топливных стержней будет прогрессировать экспоненциально без проактивного контрол€
	обслуживающего персонала.

	”правление GCR-H 1000 делитс€ на глобальное (одновременна€ установка длины всех контрольных стержней) и локальное (установка длины отдельно вз€того контрольного стержн€). √лобальное управление
	эффективно дл€ задани€ общей скорости течени€ реакции, а также относительно быстрого еЄ подавлени€ в случае необходимости. Ћокальное управление удобно дл€ точного проактивного контрол€ случайных
	всплесков и спадов реакции.

	ѕри управлении реактором необходимо учитывать, что скорость движени€ контрольных стержней ограничена. “аким образом, управление достаточно инертно. ≈сли не среагировать воврем€ при всплеске
	реактивности, то GCR-H 1000 может выйти на необратимое увеличение реактивности топливных элементов с последующим перегревом, расплавлением или взрывной декомпрессией.

	"}