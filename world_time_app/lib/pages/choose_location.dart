import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'london.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'berlin.png'),
    WorldTime(
        url: 'Europe/Amsterdam', location: 'Amsterdam', flag: 'amsterdam.png'),
    WorldTime(url: 'Europe/Andorra', location: 'Andorra', flag: 'andorra.png'),
    WorldTime(
        url: 'Europe/Astrakhan', location: 'Astrakhan', flag: 'astrakhan.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'athens.png'),
    WorldTime(
        url: 'Europe/Belgrade', location: 'Belgrade', flag: 'belgrade.png'),
    WorldTime(
        url: 'Europe/Brussels', location: 'Brussels', flag: 'brussels.png'),
    WorldTime(
        url: 'Europe/Bucharest', location: 'Bucharest', flag: 'bucharest.png'),
    WorldTime(
        url: 'Europe/Budapest', location: 'Budapest', flag: 'budapest.png'),
    WorldTime(
        url: 'Europe/Chisinau', location: 'Chisinau', flag: 'chisinau.png'),
    WorldTime(
        url: 'Europe/Copenhagen',
        location: 'Copenhagen',
        flag: 'copenhagen.png'),
    WorldTime(url: 'Europe/Dublin', location: 'Dublin', flag: 'dublin.png'),
    WorldTime(
        url: 'Europe/Gibraltar', location: 'Gibraltar', flag: 'gibraltar.png'),
    WorldTime(
        url: 'Europe/Helsinki', location: 'Helsinki', flag: 'helsinki.png'),
    WorldTime(
        url: 'Europe/Istanbul', location: 'Istanbul', flag: 'istanbul.png'),
    WorldTime(
        url: 'Europe/Kaliningrad',
        location: 'Kaliningrad',
        flag: 'kaliningrad.png'),
    WorldTime(url: 'Europe/Kiev', location: 'Kiev', flag: 'kiev.png'),
    WorldTime(url: 'Europe/Kirov', location: 'Kirov', flag: 'kirov.png'),
    WorldTime(
        url: 'Europe/Lisbon',
        location: 'Lisbon',
        flag: 'lisbon.png'), //flag not found(fnf)
    WorldTime(
        url: 'Europe/Luxembourg',
        location: 'Luxembourg',
        flag: 'luxemborg.png'),
    WorldTime(url: 'Europe/Madrid', location: 'Madrid', flag: 'madrid.png'),
    WorldTime(url: 'Europe/Malta', location: 'Malta', flag: 'malta.png'),
    WorldTime(url: 'Europe/Minsk', location: 'Minsk', flag: 'minsk.png'),
    WorldTime(url: 'Europe/Monaco', location: 'Monaco', flag: 'monaco.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'moscow.png'),
    WorldTime(url: 'Europe/Oslo', location: 'Olso', flag: 'oslo.png'), //fnf
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'paris.png'),
    WorldTime(url: 'Europe/Prague', location: 'Praugue', flag: 'prague.png'),
    WorldTime(url: 'Europe/Riga', location: 'Riga', flag: 'riga.png'), //fnf
    WorldTime(url: 'Europe/Rome', location: 'Rome', flag: 'rome.png'),
    WorldTime(url: 'Europe/Samara', location: 'Samara', flag: 'samara.png'),
    WorldTime(url: 'Europe/Saratov', location: 'Saratov', flag: 'saratov.png'),
    WorldTime(
        url: 'Europe/Simferopol',
        location: 'Simferopol',
        flag: 'simferopol.png'),
    WorldTime(url: 'Europe/Sofia', location: 'Sofia', flag: 'sofia.png'),
    WorldTime(
        url: 'Europe/Stockholm', location: 'Stockhlom', flag: 'stockholm.png'),
    WorldTime(url: 'Europe/Tallinn', location: 'Tallinn', flag: 'tallinn.png'),
    WorldTime(url: 'Europe/Tirane', location: 'Tirane', flag: 'tirane.png'),
    WorldTime(
        url: 'Europe/Ulyanovsk', location: 'Ulyanovsk', flag: 'ulyanovsk.png'),
    WorldTime(
        url: 'Europe/Uzhgorod', location: 'Uzhgorod', flag: 'uzhgorod.png'),
    WorldTime(url: 'Europe/Vienna', location: 'Vienna', flag: 'vienna.png'),
    WorldTime(url: 'Europe/Vilnius', location: 'Vilnius', flag: 'vilnius.png'),
    WorldTime(
        url: 'Europe/Volgograd', location: 'Volgorad', flag: 'volgograd.png'),
    WorldTime(url: 'Europe/Warsaw', location: 'Warsaw', flag: 'warsaw.png'),
    WorldTime(
        url: 'Europe/Zaporozhye',
        location: 'Zaporozhye',
        flag: 'zaporozhye.png'), //fnf
    WorldTime(url: 'Europe/Zurich', location: 'Zurich', flag: 'zurich.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'India', flag: 'india.png'),
    WorldTime(
        url: 'America/Los_Angeles', location: 'Los Angeles', flag: 'usa.png'),
    WorldTime(
        url: 'America/Costa_Rica',
        location: 'Costa Rica',
        flag: 'costa_rica.png'),
    WorldTime(url: 'Africa/Abidjan', location: 'Abidjan', flag: 'abidjan.png'),
    WorldTime(url: 'Africa/Algiers', location: 'Algiers', flag: 'algiers.png'),
    WorldTime(url: 'Africa/Bissau', location: 'Bissau', flag: 'bissau.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'cairo.png'),
    WorldTime(
        url: 'Africa/Casablanca',
        location: 'Casablanca',
        flag: 'casablanca.png'),
    WorldTime(url: 'Africa/Ceuta', location: 'Ceuta', flag: 'ceuta.png'),
    WorldTime(
        url: 'Africa/El_Aaiun', location: 'El Aaiun', flag: 'elaaiun.png'),
    WorldTime(
        url: 'Africa/Johannesburg',
        location: 'Johannesburg',
        flag: 'johannesburg.png'),
    WorldTime(url: 'Africa/Juba', location: 'Juba', flag: 'juba.png'),
    WorldTime(
        url: 'Africa/Khartoum', location: 'Khartoum', flag: 'khartoum.png'),
    WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'lagos.png'),
    WorldTime(url: 'Africa/Maputo', location: 'Maputo', flag: 'maputo.png'),
    WorldTime(
        url: 'Africa/Monrovia', location: 'Monrovia', flag: 'monrovia.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'nairobi.png'),
    WorldTime(
        url: 'Africa/Ndjamena', location: 'Ndjamena', flag: 'ndjamena.png'),
    WorldTime(
        url: 'Africa/Sao_Tome', location: 'Sao Tome', flag: 'saotome.png'),
    WorldTime(url: 'Africa/Tripoli', location: 'Tripoli', flag: 'tripoli.png'),
    WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: 'tunis.png'),
    WorldTime(
        url: 'Africa/Windhoek', location: 'Windhoek', flag: 'windhoek.png'),
    WorldTime(url: 'America/Adak', location: 'Adak', flag: 'adak.png'),
    WorldTime(
        url: 'America/Anchorage', location: 'Anchorage', flag: 'anchorage.png'),
    WorldTime(
        url: 'America/Araguaina', location: 'Araguaina', flag: 'araguaina.png'),
    WorldTime(
        url: 'America/Argentina/Buenos_Aires',
        location: 'Buenos Aires',
        flag: 'buenos_aires.png'),
    WorldTime(
        url: 'America/Argentina/Catamarca',
        location: 'Catamarca',
        flag: 'catamarca.png'),
    WorldTime(
        url: 'America/Argentina/Cordoba',
        location: 'Cordoba',
        flag: 'cordoba.png'),
    WorldTime(
        url: 'America/Argentina/Jujuy', location: 'Jujuy', flag: 'jujuy.png'),
    WorldTime(
        url: 'America/Argentina/La_Rioja',
        location: 'La Rioja',
        flag: 'la_rioja.png'),
    WorldTime(
        url: 'America/Argentina/Mendoza',
        location: 'Mendoza',
        flag: 'mendoza.png'),
    WorldTime(
        url: 'America/Argentina/Rio_Gallegos',
        location: 'Rio Gallegos',
        flag: 'rio_gallegos.png'),
    WorldTime(
        url: 'America/Argentina/Salta', location: 'Salta', flag: 'salta.png'),
    WorldTime(
        url: 'America/Argentina/San_Juan',
        location: 'San Juan',
        flag: 'san_juan.png'),
    WorldTime(
        url: 'America/Argentina/San_Luis',
        location: 'San Luis',
        flag: 'san_luis.png'),
    WorldTime(
        url: 'America/Argentina/Tucuman',
        location: 'Tucumn',
        flag: 'tucuman.png'),
    WorldTime(
        url: 'America/Argentina/Ushuaia',
        location: 'Ushuaia',
        flag: 'ushuaia.png'),
    WorldTime(
        url: 'America/Asuncion', location: 'Asuncion', flag: 'asuncion.png'),
    WorldTime(
        url: 'America/Atikokan', location: 'Atikokan', flag: 'atikokan.png'),
    WorldTime(url: 'America/Bahia', location: 'Bahia', flag: 'bahia.png'),
    WorldTime(
        url: 'America/Bahia_Banderas',
        location: 'Bahia Banderas',
        flag: 'bahia_banderas.png'),
    WorldTime(
        url: 'America/Barbados', location: 'Barbadoas', flag: 'barbados.png'),
    WorldTime(url: 'America/Belem', location: 'Belem', flag: 'belem.png'),
    WorldTime(url: 'America/Belize', location: 'Belize', flag: 'belize.png'),
    WorldTime(
        url: 'America/Blanc-Sablon',
        location: 'Blanc Sablon',
        flag: 'blanc-sablon.png'),
    WorldTime(url: 'America/Bogota', location: 'Bogota', flag: 'bogota.png'),
    WorldTime(url: 'America/Boise', location: 'Boise', flag: 'boise.png'),
    WorldTime(
        url: 'America/Cambridge_Bay',
        location: 'Cambridge Bay',
        flag: 'cambridge_bay.png'),
    WorldTime(
        url: 'America/Campo_Grande',
        location: 'Campo Grande',
        flag: 'campo_grande.png'),
    WorldTime(url: 'America/Cancun', location: 'Cancun', flag: 'cancun.png'),
    WorldTime(url: 'America/Caracas', location: 'Caracas', flag: 'caracas.png'),
    WorldTime(url: 'America/Cayenne', location: 'Cayene', flag: 'cayene.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'chicago.png'),
    WorldTime(
        url: 'America/Chihuahua', location: 'Chihuahua', flag: 'chihuahua.png'),
    WorldTime(
        url: 'America/Costa_Rica',
        location: 'Costa Rica',
        flag: 'costa_rica.png'),
    WorldTime(url: 'America/Creston', location: 'Creston', flag: 'creston.png'),
    WorldTime(url: 'America/Cuiaba', location: 'Cuiba', flag: 'cuiba.png'),
    WorldTime(url: 'America/Curacao', location: 'Curacao', flag: 'curacao.png'),
    WorldTime(
        url: 'America/Danmarkshavn',
        location: 'Danmarkshawn',
        flag: 'danmarkshawn.png'),
    WorldTime(url: 'America/Dawson', location: 'Dawson', flag: 'dawson.png'),
    WorldTime(
        url: 'America/Dawson_Creek',
        location: 'Dawson Creek',
        flag: 'dawson.png'),
    WorldTime(url: 'America/Denver', location: 'Denver', flag: 'denver.png'),
    WorldTime(url: 'America/Detroit', location: 'Detroit', flag: 'detroit.png'),
    WorldTime(
        url: 'America/Edmonton', location: 'Edmonton', flag: 'edmonton.png'),
    WorldTime(
        url: 'America/Eirunepe', location: 'Eirunepe', flag: 'eirunepe.png'),
    WorldTime(
        url: 'America/El_Salvador',
        location: 'El Salvador',
        flag: 'el salvador.png'),
    WorldTime(
        url: 'America/Fort_Nelson',
        location: 'Fort Nelson',
        flag: 'fort_nelson.png'),
    WorldTime(
        url: 'America/Fortaleza', location: 'Fortaleza', flag: 'fortaleza.png'),
    WorldTime(
        url: 'America/Glace_Bay', location: 'Glace Bay', flag: 'glace_bay.png'),
    WorldTime(
        url: 'America/Goose_Bay', location: 'Goose Bay', flag: 'goose_bay.png'),
    WorldTime(
        url: 'America/Grand_Turk',
        location: 'Grand Turk',
        flag: 'grand_turk.png'),
    WorldTime(
        url: 'America/Guatemala', location: 'Guatemala', flag: 'guatemala.png'),
    WorldTime(
        url: 'America/Guayaquil', location: 'Guayaquil', flag: 'guayaquil.png'),
    WorldTime(url: 'America/Guyana', location: 'Guyana', flag: 'guyana.png'),
    WorldTime(url: 'America/Halifax', location: 'Halifax', flag: 'halifax.png'),
    WorldTime(url: 'America/Havana', location: 'Havana', flag: 'havana.png'),
    WorldTime(
        url: 'America/Hermosillo',
        location: 'Hermosillo',
        flag: 'hermosillo.png'),
    WorldTime(
        url: 'America/Indiana/Indianapolis',
        location: 'Indianapolis',
        flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Knox', location: 'Knox', flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Marengo',
        location: 'Marengo',
        flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Petersburg',
        location: 'Petersburg',
        flag: 'petersburg.png'),
    WorldTime(
        url: 'America/Indiana/Tell_City',
        location: 'Tell City',
        flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Vevay', location: 'Vevay', flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Vincennes',
        location: 'Vincennes',
        flag: 'vincennes.png'),
    WorldTime(
        url: 'America/Indiana/Winamac',
        location: 'Winamac',
        flag: 'indiana.png'),
    WorldTime(url: 'America/Inuvik', location: 'Inuvik', flag: 'inuvik.png'),
    WorldTime(
        url: 'America/Iqaluit', location: 'Iqualuit', flag: 'iqaluit.png'),
    WorldTime(url: 'America/Jamaica', location: 'Jamaica', flag: 'jamaica.png'),
    WorldTime(url: 'America/Juneau', location: 'Juneau', flag: 'juneau.png'),
    WorldTime(
        url: 'America/Kentucky/Louisville',
        location: 'Louisville',
        flag: 'kentucky.png'),
    WorldTime(
        url: 'America/Kentucky/Monticello',
        location: 'Monticello',
        flag: 'kentucky.png'),
    WorldTime(url: 'America/La_Paz', location: 'La Paz', flag: 'la_paz.png'),
    WorldTime(url: 'America/Lima', location: 'Lima', flag: 'lima.png'),
    WorldTime(
        url: 'America/Los_Angeles',
        location: 'Los Angeles',
        flag: 'los_angeles.png'),
    WorldTime(url: 'America/Maceio', location: 'Maceio', flag: 'maceio.png'),
    WorldTime(url: 'America/Managua', location: 'Managua', flag: 'managua.png'),
    WorldTime(url: 'America/Manaus', location: 'Manaus', flag: 'manaus.png'),
    WorldTime(
        url: 'America/Martinique',
        location: 'Martinique',
        flag: 'martinique.png'),
    WorldTime(
        url: 'America/Matamoros', location: 'Matamoros', flag: 'matamoros.png'),
    WorldTime(
        url: 'America/Mazatlan', location: 'Mazatlan', flag: 'mazatlan.png'),
    WorldTime(
        url: 'America/Menominee', location: 'Menominee', flag: 'menominee.png'),
    WorldTime(url: 'America/Merida', location: 'Merida', flag: 'merida.png'),
    WorldTime(
        url: 'America/Metlakatla',
        location: 'Metlakatla',
        flag: 'metlakatla.png'),
    WorldTime(
        url: 'America/Mexico_City',
        location: 'Mexico City',
        flag: 'mexico_city.png'),
    WorldTime(
        url: 'America/Miquelon', location: 'Miquelon', flag: 'miquelon.png'),
    WorldTime(url: 'America/Moncton', location: 'moncton', flag: 'moncton.png'),
    WorldTime(
        url: 'America/Monterrey', location: 'Monterry', flag: 'monterrey.png'),
    WorldTime(
        url: 'America/Montevideo',
        location: 'Montvideo',
        flag: 'montevideo.png'),
    WorldTime(url: 'America/Nassau', location: 'Nassau', flag: 'nassau.png'),
    WorldTime(
        url: 'America/New_York', location: 'New York', flag: 'new_york.png'),
    WorldTime(url: 'America/Nipigon', location: 'Nipigon', flag: 'nipigon.png'),
    WorldTime(url: 'America/Nome', location: 'Nome', flag: 'nome.png'),
    WorldTime(url: 'America/Noronha', location: 'Noronha', flag: 'noronha.png'),
    WorldTime(
        url: 'America/North_Dakota/Beulah',
        location: 'Beulah',
        flag: 'beulah.png'),
    WorldTime(
        url: 'America/North_Dakota/Center',
        location: 'Center',
        flag: 'center.png'),
    WorldTime(
        url: 'America/North_Dakota/New_Salem',
        location: 'New Salem',
        flag: 'new_salem.png'),
    WorldTime(url: 'America/Nuuk', location: 'Nuuk', flag: 'nuuk.png'),
    WorldTime(url: 'America/Ojinaga', location: 'Ojinaga', flag: 'ojinaga.png'),
    WorldTime(url: 'America/Panama', location: 'Panama', flag: 'panama.png'),
    WorldTime(
        url: 'America/Pangnirtung',
        location: 'Pangnirtung',
        flag: 'pangnirtung.png'),
    WorldTime(
        url: 'America/Paramaribo',
        location: 'Paramaribo',
        flag: 'paramaribo.png'),
    WorldTime(url: 'America/Phoenix', location: 'Phoenix', flag: 'phoenix.png'),
    WorldTime(
        url: 'America/Port-au-Prince',
        location: 'Port Au Prince',
        flag: 'port_au_prince.png'),
    WorldTime(
        url: 'America/Port_of_Spain',
        location: 'Port of Spain',
        flag: 'port_of_spain.png'),
    WorldTime(
        url: 'America/Porto_Velho',
        location: 'Porto Velho',
        flag: 'porto_velho.png'),
    WorldTime(
        url: 'America/Puerto_Rico',
        location: 'Puerto Rico',
        flag: 'puerto_rico.png'),
    WorldTime(
        url: 'America/Punta_Arenas',
        location: 'Punta Arenas',
        flag: 'punta_arenas.png'),
    WorldTime(
        url: 'America/Rainy_River',
        location: 'Rainy River',
        flag: 'rainy_river.png'),
    WorldTime(
        url: 'America/Rankin_Inlet',
        location: 'Rankin Inlet',
        flag: 'rankin_inlet.png'),
    WorldTime(url: 'America/Recife', location: 'Recife', flag: 'recife.png'),
    WorldTime(url: 'America/Regina', location: 'Regina', flag: 'regina.png'),
    WorldTime(
        url: 'America/Resolute', location: 'Resolute', flag: 'resolute.png'),
    WorldTime(
        url: 'America/Rio_Branco',
        location: 'Rio Branco',
        flag: 'rio_branco.png'),
    WorldTime(
        url: 'America/Santarem', location: 'Santarem', flag: 'santarem.png'),
    WorldTime(
        url: 'America/Santiago', location: 'Santiaog', flag: 'santiaog.png'),
    WorldTime(
        url: 'America/Santo_Domingo',
        location: 'Santo Domingo',
        flag: 'santo_domingo.png'),
    WorldTime(
        url: 'America/Sao_Paulo', location: 'Sao Paulo', flag: 'sao_paulo.png'),
    WorldTime(
        url: 'America/Scoresbysund',
        location: 'Scoresbysund',
        flag: 'scoresbysund.png'),
    WorldTime(url: 'America/Sitka', location: 'Sitka', flag: 'sitka.png'),
    WorldTime(
        url: 'America/St_Johns', location: 'St Johns', flag: 'st_johns.png'),
    WorldTime(
        url: 'America/Swift_Current',
        location: 'Swift Current',
        flag: 'swift_current.png'),
    WorldTime(
        url: 'America/Tegucigalpa',
        location: 'Tegucigalpa',
        flag: 'tegucigalpa.png'),
    WorldTime(url: 'America/Thule', location: 'Thule', flag: 'thule.png'),
    WorldTime(
        url: 'America/Thunder_Bay',
        location: 'Thunder Bay',
        flag: 'thunder_bay.png'),
    WorldTime(url: 'America/Tijuana', location: 'Tijuana', flag: 'tijuana.png'),
    WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'toronto.png'),
    WorldTime(
        url: 'America/Vancouver', location: 'Vancouver', flag: 'vancouver.png'),
    WorldTime(
        url: 'America/Whitehorse',
        location: 'Whitehorse',
        flag: 'whitehorse.png'),
    WorldTime(
        url: 'America/Winnipeg', location: 'Winnipeg', flag: 'winnipeg.png'),
    WorldTime(url: 'America/Yakutat', location: 'Yakutat', flag: 'yakutat.png'),
    WorldTime(
        url: 'America/Yellowknife',
        location: 'Yellow Knife',
        flag: 'yellowknife.png'),
    WorldTime(
        url: 'Antarctica/Casey', location: 'Casey', flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Davis', location: 'Davis', flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/DumontDUrville',
        location: 'DumotDUrville',
        flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Macquarie',
        location: 'Macquarie',
        flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Mawson', location: 'Mawson', flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Palmer', location: 'Palmer', flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Rothera', location: 'Rothera', flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Syowa', location: 'Syowa', flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Troll', location: 'Troll', flag: 'antarctica.png'),
    WorldTime(
        url: 'Antarctica/Vostok', location: 'Vostok', flag: 'antarctica.png'),
    WorldTime(url: 'Asia/Almaty', location: 'Almaty', flag: 'almaty.png'),
    WorldTime(url: 'Asia/Amman', location: 'Amman', flag: 'amman.png'),
    WorldTime(url: 'Asia/Anadyr', location: 'Anadyr', flag: 'anadyr.png'),
    WorldTime(url: 'Asia/Aqtau', location: 'Aqtau', flag: 'aqtau.png'),
    WorldTime(url: 'Asia/Aqtobe', location: 'Aqtobe', flag: 'aqtobe.png'),
    WorldTime(url: 'Asia/Ashgabat', location: 'Ashgabat', flag: 'ashgabat.png'),
    WorldTime(url: 'Asia/Atyrau', location: 'Atyrau', flag: 'atyrau.png'),
    WorldTime(url: 'Asia/Baghdad', location: 'Baghdad', flag: 'baghdad.png'),
    WorldTime(url: 'Asia/Baku', location: 'Baku', flag: 'baku.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'bangkok.png'),
    WorldTime(url: 'Asia/Barnaul', location: 'Barnaul', flag: 'barnaul.png'),
    WorldTime(url: 'Asia/Beirut', location: 'Beirut', flag: 'beirut.png'),
    WorldTime(url: 'Asia/Bishkek', location: 'Bishkek', flag: 'bishkek.png'),
    WorldTime(url: 'Asia/Brunei', location: 'Brunei', flag: 'brunei.png'),
    WorldTime(url: 'Asia/Chita', location: 'Chita', flag: 'chita.png'),
    WorldTime(
        url: 'Asia/Choibalsan', location: 'Choibalasn', flag: 'choibalasn.png'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'colombo.png'),
    WorldTime(url: 'Asia/Damascus', location: 'Damascus', flag: 'damascus.png'),
    WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: 'dhaka.png'),
    WorldTime(url: 'Asia/Dili', location: 'Dili', flag: 'dili.png'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'dubai.png'),
    WorldTime(url: 'Asia/Dushanbe', location: 'Dushanbe', flag: 'dushanbe.png'),
    WorldTime(
        url: 'Asia/Famagusta', location: 'Famagusta', flag: 'famagusta.png'),
    WorldTime(url: 'Asia/Gaza', location: 'Gaza', flag: 'gaza.png'),
    WorldTime(url: 'Asia/Hebron', location: 'Hebron', flag: 'hebron.png'),
    WorldTime(
        url: 'Asia/Ho_Chi_Minh',
        location: 'Ho Chi Minh',
        flag: 'ho_chi_minh.png'),
    WorldTime(
        url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hong-kong.png'),
    WorldTime(url: 'Asia/Hovd', location: 'Hovd', flag: 'hovd.png'),
    WorldTime(url: 'Asia/Irkutsk', location: 'Irkutsk', flag: 'irkutsk.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'jakarta.png'),
    WorldTime(
        url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'jerusalem.png'),
    WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: 'kabul.png'),
    WorldTime(
        url: 'Asia/Kamchatka', location: 'Kamchatka', flag: 'kamchatka.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'karachi.png'),
    WorldTime(
        url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'kathmandu.png'),
    WorldTime(url: 'Asia/Khandyga', location: 'Khandyga', flag: 'khandyga.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'kolkata.png'),
    WorldTime(
        url: 'Asia/Krasnoyarsk',
        location: 'Krasnoyarks',
        flag: 'krasnoyarks.png'),
    WorldTime(
        url: 'Asia/Kuala_Lumpur',
        location: 'Kuala Lumpur',
        flag: 'kuala-lumpur.png'),
    WorldTime(url: 'Asia/Kuching', location: 'Kuching', flag: 'kuching.png'),
    WorldTime(url: 'Asia/Macau', location: 'Macau', flag: 'macau.png'),
    WorldTime(url: 'Asia/Magadan', location: 'Magadan', flag: 'magadan.png'),
    WorldTime(url: 'Asia/Makassar', location: 'Makassar', flag: 'makassar.png'),
    WorldTime(url: 'Asia/Manila', location: 'Manila', flag: 'manila.png'),
    WorldTime(url: 'Asia/Nicosia', location: 'Nicosia', flag: 'nicosia.png'),
    WorldTime(
        url: 'Asia/Novokuznetsk',
        location: 'Novokuznetsk',
        flag: 'novokuznetsk.png'),
    WorldTime(
        url: 'Asia/Novosibirsk',
        location: 'Novosibirsk',
        flag: 'novosibirsk.png'),
    WorldTime(url: 'Asia/Omsk', location: 'Omsk', flag: 'omsk.png'),
    WorldTime(url: 'Asia/Oral', location: 'Oral', flag: 'oral.png'),
    WorldTime(
        url: 'Asia/Pontianak', location: 'Pontianak', flag: 'pontianak.png'),
    WorldTime(
        url: 'Asia/Pyongyang', location: 'Pyongyang', flag: 'pyongyang.png'),
    WorldTime(url: 'Asia/Qatar', location: 'Qatar', flag: 'qatar.png'),
    WorldTime(url: 'Asia/Qostanay', location: 'Qostanay', flag: 'qostanay.png'),
    WorldTime(
        url: 'Asia/Qyzylorda', location: 'Qyzylorda', flag: 'qyzylorda.png'),
    WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: 'riyadh.png'),
    WorldTime(url: 'Asia/Sakhalin', location: 'Sakhalin', flag: 'sakhalin.png'),
    WorldTime(
        url: 'Asia/Samarkand', location: 'Samarkand', flag: 'samarkand.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'seoul.png'),
    WorldTime(url: 'Asia/Shanghai', location: 'Shanghai', flag: 'shanghai.png'),
    WorldTime(
        url: 'Asia/Singapore', location: 'Singapore', flag: 'singapore.png'),
    WorldTime(
        url: 'Asia/Srednekolymsk',
        location: 'Srednekolymsk',
        flag: 'srednekolymsk.png'),
    WorldTime(url: 'Asia/Taipei', location: 'Taipei', flag: 'taipei.png'),
    WorldTime(url: 'Asia/Tashkent', location: 'Tashkent', flag: 'tashkent.png'),
    WorldTime(url: 'Asia/Tbilisi', location: 'Tbilisi', flag: 'tbilisi.png'),
    WorldTime(url: 'Asia/Tehran', location: 'Tehran', flag: 'tehran.png'),
    WorldTime(url: 'Asia/Thimphu', location: 'Thimphu', flag: 'thimphu.png'),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: 'tokyo.png'),
    WorldTime(url: 'Asia/Tomsk', location: 'Tomsk', flag: 'tomsk.png'),
    WorldTime(
        url: 'Asia/Ulaanbaatar',
        location: 'Ulaanbaatar',
        flag: 'ulaanbaatar.png'),
    WorldTime(url: 'Asia/Urumqi', location: 'Urumqi', flag: 'urumqi.png'),
    WorldTime(url: 'Asia/Ust-Nera', location: 'Ust-Nera', flag: 'ust-nera.png'),
    WorldTime(
        url: 'Asia/Vladivostok',
        location: 'Vladivostok',
        flag: 'vladivostok.png'),
    WorldTime(url: 'Asia/Yakutsk', location: 'Yakutsk', flag: 'yakutsk.png'),
    WorldTime(url: 'Asia/Yangon', location: 'Yangon', flag: 'yangon.png'),
    WorldTime(
        url: 'Asia/Yekaterinburg',
        location: 'Yekaterinburg',
        flag: 'yekaterinburg.png'),
    WorldTime(url: 'Asia/Yerevan', location: 'Yerevan', flag: 'yerevan.png'),
    WorldTime(url: 'Atlantic/Azores', location: 'Azores', flag: 'atlantic.png'),
    WorldTime(
        url: 'Atlantic/Bermuda', location: 'Bermuda', flag: 'atlantic.png'),
    WorldTime(url: 'Atlantic/Canary', location: 'Canary', flag: 'atlantic.png'),
    WorldTime(
        url: 'Atlantic/Cape_Verde',
        location: 'Cape Verde',
        flag: 'atlantic.png'),
    WorldTime(url: 'Atlantic/Faroe', location: 'Faroe', flag: 'atlantic.png'),
    WorldTime(
        url: 'Atlantic/Madeira', location: 'Maderia', flag: 'atlantic.png'),
    WorldTime(
        url: 'Atlantic/Reykjavik', location: 'Reykjavik', flag: 'atlantic.png'),
    WorldTime(
        url: 'Atlantic/South_Georgia',
        location: 'South Georgia',
        flag: 'atlantic.png'),
    WorldTime(
        url: 'Atlantic/Stanley', location: 'Stanley', flag: 'atlantic.png'),
    WorldTime(
        url: 'Australia/Adelaide', location: 'Adelaide', flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Brisbane', location: 'Brisbane', flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Broken_Hill',
        location: 'Broken Hill',
        flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Currie', location: 'Currie', flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Darwin', location: 'Darwin', flag: 'adelaide.png'),
    WorldTime(url: 'Australia/Eucla', location: 'Eucla', flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Hobart', location: 'Hobart', flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Lindeman', location: 'Lindeman', flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Lord_Howe',
        location: 'Lord Howe',
        flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Melbourne',
        location: 'Melbourne',
        flag: 'adelaide.png'),
    WorldTime(url: 'Australia/Perth', location: 'Perth', flag: 'adelaide.png'),
    WorldTime(
        url: 'Australia/Sydney', location: 'Sydney', flag: 'adelaide.png'),
    WorldTime(url: 'Pacific/Apia', location: 'Apia', flag: 'apia.png'),
    WorldTime(
        url: 'Pacific/Auckland', location: 'Auckland', flag: 'auckland.png'),
    WorldTime(
        url: 'Pacific/Bougainville',
        location: 'Bougainville',
        flag: 'bougainville.png'),
    WorldTime(url: 'Pacific/Chatham', location: 'Chatham', flag: 'chatham.png'),
    WorldTime(url: 'Pacific/Chuuk', location: 'Chuuk', flag: 'chuuk.png'),
    WorldTime(url: 'Pacific/Easter', location: 'Easter', flag: 'easter.png'),
    WorldTime(url: 'Pacific/Efate', location: 'Efate', flag: 'efate.png'),
    WorldTime(
        url: 'Pacific/Enderbury', location: 'Enderbury', flag: 'enderbury.png'),
    WorldTime(url: 'Pacific/Fakaofo', location: 'Fakaofo', flag: 'fakaofo.png'),
    WorldTime(url: 'Pacific/Fiji', location: 'Fiji', flag: 'fiji.png'),
    WorldTime(
        url: 'Pacific/Funafuti', location: 'Funafuti', flag: 'funafuti.png'),
    WorldTime(
        url: 'Pacific/Galapagos', location: 'Galapagos', flag: 'galapagos.png'),
    WorldTime(url: 'Pacific/Gambier', location: 'Gambier', flag: 'gambier.png'),
    WorldTime(
        url: 'Pacific/Guadalcanal',
        location: 'Guadalcanal',
        flag: 'guadalcanal.png'),
    WorldTime(url: 'Pacific/Guam', location: 'Guam', flag: 'guam.png'),
    WorldTime(
        url: 'Pacific/Honolulu', location: 'Honolulu', flag: 'honolulu.png'),
    WorldTime(
        url: 'Pacific/Kiritimati',
        location: 'Kirtimati',
        flag: 'kiritimati.png'),
    WorldTime(url: 'Pacific/Kosrae', location: 'Kosrae', flag: 'kosrae.png'),
    WorldTime(
        url: 'Pacific/Kwajalein', location: 'Kwajalien', flag: 'kwajalein.png'),
    WorldTime(url: 'Pacific/Majuro', location: 'Majuro', flag: 'majuro.png'),
    WorldTime(
        url: 'Pacific/Marquesas', location: 'Marquesas', flag: 'marquesas.png'),
    WorldTime(url: 'Pacific/Nauru', location: 'Nauru', flag: 'nauru.png'),
    WorldTime(url: 'Pacific/Niue', location: 'Niue', flag: 'niue.png'),
    WorldTime(url: 'Pacific/Norfolk', location: 'Norflok', flag: 'norfolk.png'),
    WorldTime(url: 'Pacific/Noumea', location: 'Noumea', flag: 'noumea.png'),
    WorldTime(
        url: 'Pacific/Pago_Pago', location: 'Pago Pago', flag: 'pago_pago.png'),
    WorldTime(url: 'Pacific/Palau', location: 'Palau', flag: 'palau.png'),
    WorldTime(
        url: 'Pacific/Pitcairn', location: 'Pitcairn', flag: 'pitcairn.png'),
    WorldTime(url: 'Pacific/Pohnpei', location: 'Pohnpei', flag: 'pohnpei.png'),
    WorldTime(
        url: 'Pacific/Port_Moresby',
        location: 'Port Moresby',
        flag: 'port_moresby.png'),
    WorldTime(
        url: 'Pacific/Rarotonga', location: 'Rarotonga', flag: 'rarotonga.png'),
    WorldTime(url: 'Pacific/Tahiti', location: 'Tahiti', flag: 'tahiti.png'),
    WorldTime(
        url: 'Pacific/Tarawa',
        location: 'Tarawa',
        flag: 'tarawa.png'), //fnf loop
    WorldTime(
        url: 'Pacific/Tongatapu', location: 'Tongatapu', flag: 'togatapu.png'),
    WorldTime(url: 'Pacific/Wake', location: 'Wake', flag: 'wake.png'),
    WorldTime(url: 'Pacific/Wallis', location: 'Wallis', flag: 'wallis.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () async {
                  dynamic result =
                      await Navigator.pushNamed(context, '/search');
                }),
          ]),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  onLongPress: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
