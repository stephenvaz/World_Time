import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: ''),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'berlin.png'),
    WorldTime(url: 'Europe/Amsterdam', location: 'Amsterdam', flag: ''),
    WorldTime(url: 'Europe/Andorra', location: 'Andorra', flag: ''),
    WorldTime(url: 'Europe/Astrakhan', location: 'Astrakhan', flag: ''),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: ''),
    WorldTime(url: 'Europe/Belgrade', location: 'Belgrade', flag: ''),
    WorldTime(url: 'Europe/Brussels', location: 'Brussels', flag: ''),
    WorldTime(url: 'Europe/Bucharest', location: 'Bucharest', flag: ''),
    WorldTime(url: 'Europe/Budapest', location: 'Budapest', flag: ''),
    WorldTime(url: 'Europe/Chisinau', location: 'Chisinau', flag: ''),
    WorldTime(url: 'Europe/Copenhagen', location: 'Copenhagen', flag: ''),
    WorldTime(url: 'Europe/Dublin', location: 'Dublin', flag: ''),
    WorldTime(url: 'Europe/Gibraltar', location: 'Gibraltar', flag: ''),
    WorldTime(url: 'Europe/Helsinki', location: 'Helsinki', flag: ''),
    WorldTime(url: 'Europe/Istanbul', location: 'Istanbul', flag: ''),
    WorldTime(url: 'Europe/Kaliningrad', location: 'Kaliningrad', flag: ''),
    WorldTime(url: 'Europe/Kiev', location: 'Kiev', flag: ''),
    WorldTime(url: 'Europe/Kirov', location: 'Kirov', flag: ''),
    WorldTime(url: 'Europe/Lisbon', location: 'Lisbon', flag: ''),
    WorldTime(url: 'Europe/Luxembourg', location: 'Luxembourg', flag: ''),
    WorldTime(url: 'Europe/Madrid', location: 'Madrid', flag: ''),
    WorldTime(url: 'Europe/Malta', location: 'Malta', flag: ''),
    WorldTime(url: 'Europe/Minsk', location: 'Minsk', flag: ''),
    WorldTime(url: 'Europe/Monaco', location: 'Monaco', flag: ''),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: ''),
    WorldTime(url: 'Europe/Oslo', location: 'Olso', flag: ''),
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: ''),
    WorldTime(url: 'Europe/Prague', location: 'Praugue', flag: ''),
    WorldTime(url: 'Europe/Riga', location: 'Riga', flag: ''),
    WorldTime(url: 'Europe/Rome', location: 'Rome', flag: ''),
    WorldTime(url: 'Europe/Samara', location: 'Samara', flag: ''),
    WorldTime(url: 'Europe/Saratov', location: 'Saratov', flag: ''),
    WorldTime(url: 'Europe/Simferopol', location: 'Simferopol', flag: ''),
    WorldTime(url: 'Europe/Sofia', location: 'Sofia', flag: ''),
    WorldTime(url: 'Europe/Stockholm', location: 'Stockhlom', flag: ''),
    WorldTime(url: 'Europe/Tallinn', location: 'Tallinn', flag: ''),
    WorldTime(url: 'Europe/Tirane', location: 'Tirane', flag: ''),
    WorldTime(url: 'Europe/Ulyanovsk', location: 'Ulyanovsk', flag: ''),
    WorldTime(url: 'Europe/Uzhgorod', location: 'Uzhgorod', flag: ''),
    WorldTime(url: 'Europe/Vienna', location: 'Vienna', flag: ''),
    WorldTime(url: 'Europe/Vilnius', location: 'Vilnius', flag: ''),
    WorldTime(url: 'Europe/Volgograd', location: 'Volgorad', flag: ''),
    WorldTime(url: 'Europe/Warsaw', location: 'Warsaw', flag: ''),
    WorldTime(url: 'Europe/Zaporozhye', location: 'Zaporozhye', flag: ''),
    WorldTime(url: 'Europe/Zurich', location: 'Zurich', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'India', flag: 'India.png'),
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
        url: 'Africa/El_Aaiun', location: 'El_Aaiun', flag: 'elaaiun.png'),
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
        url: 'Africa/Sao_Tome', location: 'Sao_Tome', flag: 'saotome.png'),
    WorldTime(url: 'Africa/Tripoli', location: 'Tripoli', flag: 'tripoli.png'),
    WorldTime(url: 'Africa/Tunis', location: 'Tunis', flag: 'tunis.png'),
    WorldTime(
        url: 'Africa/Windhoek', location: 'Windhoek', flag: 'winhoek.png'),
    WorldTime(url: 'America/Adak', location: 'Adak', flag: 'adak.ong'),
    WorldTime(
        url: 'America/Anchorage',
        location: 'Anchorage',
        flag: 'anchourage.png'),
    WorldTime(
        url: 'America/Araguaina', location: 'Araguaina', flag: 'araguaina.png'),
    WorldTime(
        url: 'America/Argentina/Buenos_Aires',
        location: 'Buenos_Aires',
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
        location: 'La_Rioja',
        flag: 'la_rioja.png'),
    WorldTime(
        url: 'America/Argentina/Mendoza',
        location: 'Mendoza',
        flag: 'mendoza.png'),
    WorldTime(
        url: 'America/Argentina/Rio_Gallegos',
        location: 'Rio_Galleos',
        flag: 'rio_galleos.png'),
    WorldTime(
        url: 'America/Argentina/Salta', location: 'Salta', flag: 'salta.png'),
    WorldTime(
        url: 'America/Argentina/San_Juan',
        location: 'San_Juan',
        flag: 'san_juan.png'),
    WorldTime(
        url: 'America/Argentina/San_Luis',
        location: 'San_Luis',
        flag: 'san_luis.png'),
    WorldTime(
        url: 'America/Argentina/Tucuman',
        location: 'Tucumn',
        flag: 'tucumn.png'),
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
        location: 'Bahia_Banderas',
        flag: 'bahia_banderas.png'),
    WorldTime(
        url: 'America/Barbados', location: 'Barbadoas', flag: 'barbadoas.png'),
    WorldTime(url: 'America/Belem', location: 'Belem', flag: 'belem.png'),
    WorldTime(url: 'America/Belize', location: 'Belize', flag: 'belize.png'),
    WorldTime(
        url: 'America/Blanc-Sablon',
        location: 'Blanc_Sablon',
        flag: 'blanc_sablon.png'),
    WorldTime(url: 'America/Bogota', location: 'Bogota', flag: 'bogota.png'),
    WorldTime(url: 'America/Boise', location: 'Boise', flag: 'boise.png'),
    WorldTime(
        url: 'America/Cambridge_Bay',
        location: 'Cambridge_Bay',
        flag: 'cambridge_bay.png'),
    WorldTime(
        url: 'America/Campo_Grande',
        location: 'Campo_Grande',
        flag: 'camppo_grande.png'),
    WorldTime(url: 'America/Cancun', location: 'Cancun', flag: 'cancun.png'),
    WorldTime(url: 'America/Caracas', location: 'Caracas', flag: 'caracas.png'),
    WorldTime(url: 'America/Cayenne', location: 'Cayene', flag: 'cayene.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'chicago.png'),
    WorldTime(
        url: 'America/Chihuahua', location: 'Chihuahua', flag: 'chihuahua.png'),
    WorldTime(
        url: 'America/Costa_Rica',
        location: 'Costa_Rica',
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
        location: 'Dawson_Creek',
        flag: 'dawson_creek.png'),
    WorldTime(url: 'America/Denver', location: 'Denver', flag: 'denver.png'),
    WorldTime(url: 'America/Detroit', location: 'Detroit', flag: 'detroit.png'),
    WorldTime(
        url: 'America/Edmonton', location: 'Edmonton', flag: 'edmonton.png'),
    WorldTime(
        url: 'America/Eirunepe', location: 'Eirunepe', flag: 'eirunepe.png'),
    WorldTime(
        url: 'America/El_Salvador',
        location: 'El_Salvador',
        flag: 'el_salvador.png'),
    WorldTime(
        url: 'America/Fort_Nelson',
        location: 'Fort_Nelson',
        flag: 'fort_nelson.png'),
    WorldTime(
        url: 'America/Fortaleza', location: 'Fortaleza', flag: 'fortaleza.png'),
    WorldTime(
        url: 'America/Glace_Bay', location: 'Glace_Bay', flag: 'glace_bay.png'),
    WorldTime(
        url: 'America/Goose_Bay', location: 'Goose_Bay', flag: 'goose_bay.png'),
    WorldTime(
        url: 'America/Grand_Turk',
        location: 'Grand_Turk',
        flag: 'grand_turk.png'),
    WorldTime(
        url: 'America/Guatemala', location: 'Guatemala', flag: 'guatemala.png'),
    WorldTime(
        url: 'America/Guayaquil',
        location: 'Guayaquil',
        flag: 'guayaquill.png'),
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
        flag: 'indianapolis.png'),
    WorldTime(
        url: 'America/Indiana/Knox', location: 'Knox', flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Marengo',
        location: 'Marengo',
        flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Petersburg',
        location: 'Petersburg',
        flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Tell_City',
        location: 'Tell_City',
        flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Vevay', location: 'Vevay', flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Vincennes',
        location: 'Vincennes',
        flag: 'indiana.png'),
    WorldTime(
        url: 'America/Indiana/Winamac',
        location: 'Winamac',
        flag: 'indiana.png'),
    WorldTime(url: 'America/Inuvik', location: 'Inuvik', flag: 'inuvik.png'),
    WorldTime(
        url: 'America/Iqaluit', location: 'Iqualuit', flag: 'iqualuit.png'),
    WorldTime(url: 'America/Jamaica', location: 'Jamaica', flag: 'jamaica.png'),
    WorldTime(url: 'America/Juneau', location: 'Juneau', flag: 'juneau.png'),
    WorldTime(
        url: 'America/Kentucky/Louisville',
        location: 'Louisville',
        flag: 'louisville.png'),
    WorldTime(
        url: 'America/Kentucky/Monticello',
        location: 'Montecello',
        flag: 'monticello.png'),
    WorldTime(url: 'America/La_Paz', location: 'La_Paz', flag: 'la_paz.png'),
    WorldTime(url: 'America/Lima', location: 'Lima', flag: 'lima.png'),
    WorldTime(
        url: 'America/Los_Angeles',
        location: 'Los_Angeles',
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
        location: 'Mexico_city',
        flag: 'mexico_city.png'),
    WorldTime(
        url: 'America/Miquelon', location: 'Miquelon', flag: 'miquelon.png'),
    WorldTime(url: 'America/Moncton', location: 'moncton', flag: 'moncton.png'),
    WorldTime(
        url: 'America/Monterrey', location: 'Monterry', flag: 'monterry.png'),
    WorldTime(
        url: 'America/Montevideo',
        location: 'Montvideo',
        flag: 'montvideo.png'),
    WorldTime(url: 'America/Nassau', location: 'Nassau', flag: 'nassau.png'),
    WorldTime(url: 'America/New_York', location: 'New_York', flag: ''),
    WorldTime(url: 'America/Nipigon', location: 'Nipigon', flag: 'nipigon.png'),
    WorldTime(url: 'America/Nome', location: 'Nome', flag: 'nome.png'),
    WorldTime(url: 'America/Noronha', location: 'Noronha', flag: 'noronha.png'),
    WorldTime(
        url: 'America/North_Dakota/Beulah',
        location: 'Beulah',
        flag: 'beulah.p'),
    WorldTime(url: 'America/North_Dakota/Center', location: 'Center', flag: ''),
    WorldTime(
        url: 'America/North_Dakota/New_Salem', location: 'New_Salem', flag: ''),
    WorldTime(url: 'America/Nuuk', location: 'Nukk', flag: ''),
    WorldTime(url: 'America/Ojinaga', location: 'Ojinaga', flag: ''),
    WorldTime(url: 'America/Panama', location: 'Panama', flag: ''),
    WorldTime(url: 'America/Pangnirtung', location: 'Pangnirtung', flag: ''),
    WorldTime(url: 'America/Paramaribo', location: 'Paramaribo', flag: ''),
    WorldTime(url: 'America/Phoenix', location: 'Phoenix', flag: ''),
    WorldTime(
        url: 'America/Port-au-Prince', location: 'Port-au-Prince', flag: ''),
    WorldTime(
        url: 'America/Port_of_Spain', location: 'Port_of_Spain', flag: ''),
    WorldTime(url: 'America/Porto_Velho', location: 'Porto_Velho', flag: ''),
    WorldTime(url: 'America/Puerto_Rico', location: 'Puerto_rico', flag: ''),
    WorldTime(url: 'America/Punta_Arenas', location: 'Punta_Arenas', flag: ''),
    WorldTime(url: 'America/Rainy_River', location: 'Rainy_River', flag: ''),
    WorldTime(url: 'America/Rankin_Inlet', location: 'Rankin_Inlet', flag: ''),
    WorldTime(url: 'America/Recife', location: 'Recife', flag: ''),
    WorldTime(url: 'America/Regina', location: 'Regina', flag: ''),
    WorldTime(url: 'America/Resolute', location: 'Resolute', flag: ''),
    WorldTime(url: 'America/Rio_Branco', location: 'Rio_Branco', flag: ''),
    WorldTime(url: 'America/Santarem', location: 'Santarem', flag: ''),
    WorldTime(url: 'America/Santiago', location: 'Santiaog', flag: ''),
    WorldTime(
        url: 'America/Santo_Domingo', location: 'Santo_Domingo', flag: ''),
    WorldTime(url: 'America/Sao_Paulo', location: 'Sao_paula', flag: ''),
    WorldTime(url: 'America/Scoresbysund', location: 'Scoresbysund', flag: ''),
    WorldTime(url: 'America/Sitka', location: 'Sitka', flag: ''),
    WorldTime(url: 'America/St_Johns', location: 'St_Johns', flag: ''),
    WorldTime(
        url: 'America/Swift_Current', location: 'Swift_Current', flag: ''),
    WorldTime(url: 'America/Tegucigalpa', location: 'Tegucigalpa', flag: ''),
    WorldTime(url: 'America/Thule', location: 'Thule', flag: ''),
    WorldTime(url: 'America/Thunder_Bay', location: 'Thunder_Bay', flag: ''),
    WorldTime(url: 'America/Tijuana', location: 'Tijuana', flag: ''),
    WorldTime(url: 'America/Toronto', location: 'Toronto', flag: ''),
    WorldTime(url: 'America/Vancouver', location: 'Vancouver', flag: ''),
    WorldTime(url: 'America/Whitehorse', location: 'Whitehorse', flag: ''),
    WorldTime(url: 'America/Winnipeg', location: 'Winnipeg', flag: ''),
    WorldTime(url: 'America/Yakutat', location: 'Yakutat', flag: ''),
    WorldTime(url: 'America/Yellowknife', location: 'YellowKnife', flag: ''),
    WorldTime(url: 'Antarctica/Casey', location: 'Casey', flag: ''),
    WorldTime(url: 'Antarctica/Davis', location: 'Davis', flag: ''),
    WorldTime(
        url: 'Antarctica/DumontDUrville', location: 'DumotDUrville', flag: ''),
    WorldTime(url: 'Antarctica/Macquarie', location: 'Macquarie', flag: ''),
    WorldTime(url: 'Antarctica/Mawson', location: 'Mawson', flag: ''),
    WorldTime(url: 'Antarctica/Palmer', location: 'Palmer', flag: ''),
    WorldTime(url: 'Antarctica/Rothera', location: 'Rothera', flag: ''),
    WorldTime(url: 'Antarctica/Syowa', location: 'Syowa', flag: ''),
    WorldTime(url: 'Antarctica/Troll', location: 'Troll', flag: ''),
    WorldTime(url: 'Antarctica/Vostok', location: 'Vostok', flag: ''),
    WorldTime(url: 'Asia/Almaty', location: 'Almaty', flag: ''),
    WorldTime(url: 'Asia/Amman', location: 'Amman', flag: ''),
    WorldTime(url: 'Asia/Anadyr', location: 'Anadyr', flag: ''),
    WorldTime(url: 'Asia/Aqtau', location: 'Aqtau', flag: ''),
    WorldTime(url: 'Asia/Aqtobe', location: 'Aqtobe', flag: ''),
    WorldTime(url: 'Asia/Ashgabat', location: 'Ashgabat', flag: ''),
    WorldTime(url: 'Asia/Atyrau', location: 'Atyrau', flag: ''),
    WorldTime(url: 'Asia/Baghdad', location: 'Baghdad', flag: ''),
    WorldTime(url: 'Asia/Baku', location: 'Baku', flag: ''),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: ''),
    WorldTime(url: 'Asia/Barnaul', location: 'Barnaul', flag: ''),
    WorldTime(url: 'Asia/Beirut', location: 'Beirut', flag: ''),
    WorldTime(url: 'Asia/Bishkek', location: 'Bishkek', flag: ''),
    WorldTime(url: 'Asia/Brunei', location: 'Brunei', flag: ''),
    WorldTime(url: 'Asia/Chita', location: 'Chita', flag: ''),
    WorldTime(url: 'Asia/Choibalsan', location: 'Choibalasm', flag: ''),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: ''),
    WorldTime(url: 'Asia/Damascus', location: 'Damascus', flag: ''),
    WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: ''),
    WorldTime(url: 'Asia/Dili', location: 'Dili', flag: ''),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: ''),
    WorldTime(url: 'Asia/Dushanbe', location: 'Dushanbe', flag: ''),
    WorldTime(url: 'Asia/Famagusta', location: 'Famagusta', flag: ''),
    WorldTime(url: 'Asia/Gaza', location: 'Gaza', flag: ''),
    WorldTime(url: 'Asia/Hebron', location: 'Hebron', flag: ''),
    WorldTime(url: 'Asia/Ho_Chi_Minh', location: 'Ho_Chi_Minh', flag: ''),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong_Kong', flag: ''),
    WorldTime(url: 'Asia/Hovd', location: 'Hovd', flag: ''),
    WorldTime(url: 'Asia/Irkutsk', location: 'Irkutsk', flag: ''),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: ''),
    WorldTime(url: 'Asia/Jerusalem', location: 'Jerusalem', flag: ''),
    WorldTime(url: 'Asia/Kabul', location: 'Kabul', flag: ''),
    WorldTime(url: 'Asia/Kamchatka', location: 'Kamchatka', flag: ''),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: ''),
    WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: ''),
    WorldTime(url: 'Asia/Khandyga', location: 'Khandyga', flag: ''),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: ''),
    WorldTime(url: 'Asia/Krasnoyarsk', location: 'Karasnoyarks', flag: ''),
    WorldTime(url: 'Asia/Kuala_Lumpur', location: 'Kuala_Lumpur', flag: ''),
    WorldTime(url: 'Asia/Kuching', location: 'Kuching', flag: ''),
    WorldTime(url: 'Asia/Macau', location: 'Macau', flag: ''),
    WorldTime(url: 'Asia/Magadan', location: 'Magadan', flag: ''),
    WorldTime(url: 'Asia/Makassar', location: 'Makassar', flag: ''),
    WorldTime(url: 'Asia/Manila', location: 'Manila', flag: ''),
    WorldTime(url: 'Asia/Nicosia', location: 'Nicosia', flag: ''),
    WorldTime(url: 'Asia/Novokuznetsk', location: 'Novokuznetsk', flag: ''),
    WorldTime(url: 'Asia/Novosibirsk', location: 'Novosibirsk', flag: ''),
    WorldTime(url: 'Asia/Omsk', location: 'Omsk', flag: ''),
    WorldTime(url: 'Asia/Oral', location: 'Oral', flag: ''),
    WorldTime(url: 'Asia/Pontianak', location: 'Pontianak', flag: ''),
    WorldTime(url: 'Asia/Pyongyang', location: 'Pyongyang', flag: ''),
    WorldTime(url: 'Asia/Qatar', location: 'Qatar', flag: ''),
    WorldTime(url: 'Asia/Qostanay', location: 'Qostanay', flag: ''),
    WorldTime(url: 'Asia/Qyzylorda', location: 'Qyzylorda', flag: ''),
    WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: ''),
    WorldTime(url: 'Asia/Sakhalin', location: 'Sakhalin', flag: ''),
    WorldTime(url: 'Asia/Samarkand', location: 'Samarkand', flag: ''),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: ''),
    WorldTime(url: 'Asia/Shanghai', location: 'Shanghai', flag: ''),
    WorldTime(url: 'Asia/Singapore', location: 'Singapore', flag: ''),
    WorldTime(url: 'Asia/Srednekolymsk', location: 'Srednekolymsk', flag: ''),
    WorldTime(url: 'Asia/Taipei', location: 'Taipei', flag: ''),
    WorldTime(url: 'Asia/Tashkent', location: 'Tashkent', flag: ''),
    WorldTime(url: 'Asia/Tbilisi', location: 'Tbilisi', flag: ''),
    WorldTime(url: 'Asia/Tehran', location: 'Tehran', flag: ''),
    WorldTime(url: 'Asia/Thimphu', location: 'Thimpu', flag: ''),
    WorldTime(url: 'Asia/Tokyo', location: 'Tokyo', flag: ''),
    WorldTime(url: 'Asia/Tomsk', location: 'Tomsk', flag: ''),
    WorldTime(url: 'Asia/Ulaanbaatar', location: 'Ulaanbaatar', flag: ''),
    WorldTime(url: 'Asia/Urumqi', location: 'Urumqi', flag: ''),
    WorldTime(url: 'Asia/Ust-Nera', location: 'Ust-Nera', flag: ''),
    WorldTime(url: 'Asia/Vladivostok', location: 'Vladisvostok', flag: ''),
    WorldTime(url: 'Asia/Yakutsk', location: 'Yakutsk', flag: ''),
    WorldTime(url: 'Asia/Yangon', location: 'Yangon', flag: ''),
    WorldTime(url: 'Asia/Yekaterinburg', location: 'Yekaterinburg', flag: ''),
    WorldTime(url: 'Asia/Yerevan', location: 'Yerevan', flag: ''),
    WorldTime(url: 'Atlantic/Azores', location: 'Azores', flag: ''),
    WorldTime(url: 'Atlantic/Bermuda', location: 'Bermuda', flag: ''),
    WorldTime(url: 'Atlantic/Canary', location: 'Canary', flag: ''),
    WorldTime(url: 'Atlantic/Cape_Verde', location: 'Cape_Verde', flag: ''),
    WorldTime(url: 'Atlantic/Faroe', location: 'Faroe', flag: ''),
    WorldTime(url: 'Atlantic/Madeira', location: 'Maderia', flag: ''),
    WorldTime(url: 'Atlantic/Reykjavik', location: 'Reykjavik', flag: ''),
    WorldTime(
        url: 'Atlantic/South_Georgia', location: 'South_Georgia', flag: ''),
    WorldTime(url: 'Atlantic/Stanley', location: 'Stanley', flag: ''),
    WorldTime(url: 'Australia/Adelaide', location: 'Adelaide', flag: ''),
    WorldTime(url: 'Australia/Brisbane', location: 'Brisbane', flag: ''),
    WorldTime(url: 'Australia/Broken_Hill', location: 'Broken_Hill', flag: ''),
    WorldTime(url: 'Australia/Currie', location: 'Currie', flag: ''),
    WorldTime(url: 'Australia/Darwin', location: 'Darwin', flag: ''),
    WorldTime(url: 'Australia/Eucla', location: 'Eucla', flag: ''),
    WorldTime(url: 'Australia/Hobart', location: 'Hobart', flag: ''),
    WorldTime(url: 'Australia/Lindeman', location: 'Lindeman', flag: ''),
    WorldTime(url: 'Australia/Lord_Howe', location: 'Lord_Howe', flag: ''),
    WorldTime(url: 'Australia/Melbourne', location: 'Melbourne', flag: ''),
    WorldTime(url: 'Australia/Perth', location: 'Perth', flag: ''),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: ''),
    WorldTime(url: 'Pacific/Apia', location: 'Apia', flag: ''),
    WorldTime(url: 'Pacific/Auckland', location: 'Auckland', flag: ''),
    WorldTime(url: 'Pacific/Bougainville', location: 'Bougainville', flag: ''),
    WorldTime(url: 'Pacific/Chatham', location: 'Chatham', flag: ''),
    WorldTime(url: 'Pacific/Chuuk', location: 'Chuuk', flag: ''),
    WorldTime(url: 'Pacific/Easter', location: 'Easter', flag: ''),
    WorldTime(url: 'Pacific/Efate', location: 'Efate', flag: ''),
    WorldTime(url: 'Pacific/Enderbury', location: 'Enderbury', flag: ''),
    WorldTime(url: 'Pacific/Fakaofo', location: 'Fakaofo', flag: ''),
    WorldTime(url: 'Pacific/Fiji', location: 'Fiji', flag: ''),
    WorldTime(url: 'Pacific/Fiji', location: 'Fiji', flag: 'fiji.png'),
    WorldTime(
        url: 'Pacific/Funafuti', location: 'Funafuti', flag: 'funafuti.png'),
    WorldTime(
        url: 'Pacific/Galapagos', location: 'Galapagos', flag: 'galapagos.png'),
    WorldTime(url: 'Pacific/Gambier', location: 'Gambier', flag: 'Gambier.png'),
    WorldTime(
        url: 'Pacific/Guadalcanal',
        location: 'Guadalcanal',
        flag: 'Guadalcanal.png'),
    WorldTime(url: 'Pacific/Guam', location: 'Guam', flag: 'guam.png'),
    WorldTime(
        url: 'Pacific/Honolulu', location: 'Honolulu', flag: 'honolulu.png'),
    WorldTime(
        url: 'Pacific/Kiritimati',
        location: 'Kirtimati',
        flag: 'kirtimati.png'),
    WorldTime(url: 'Pacific/Kosrae', location: 'Kosrae', flag: 'kosrae.png'),
    WorldTime(
        url: 'Pacific/Kwajalein', location: 'Kwajalien', flag: 'kwajalien.png'),
    WorldTime(url: 'Pacific/Majuro', location: 'Majuro', flag: 'majuro.png'),
    WorldTime(
        url: 'Pacific/Marquesas', location: 'Marquesas', flag: 'marquesas.png'),
    WorldTime(url: 'Pacific/Nauru', location: 'Nauru', flag: 'narau.png'),
    WorldTime(url: 'Pacific/Niue', location: 'Niue', flag: 'niue.png'),
    WorldTime(url: 'Pacific/Norfolk', location: 'Norflok', flag: 'norflok.png'),
    WorldTime(url: 'Pacific/Noumea', location: 'Noumea', flag: 'noumea.png'),
    WorldTime(
        url: 'Pacific/Pago_Pago', location: 'Pago_Pago', flag: 'pago_pago.png'),
    WorldTime(url: 'Pacific/Palau', location: 'Palau', flag: 'palau.png'),
    WorldTime(
        url: 'Pacific/Pitcairn', location: 'Pitcairin', flag: 'pitcairin.png'),
    WorldTime(url: 'Pacific/Pohnpei', location: 'Pohnpei', flag: 'pohnpei.png'),
    WorldTime(
        url: 'Pacific/Port_Moresby',
        location: 'Port_Moresby',
        flag: 'port_moresby.png'),
    WorldTime(
        url: 'Pacific/Rarotonga', location: 'Rarotonga', flag: 'rarotonga.png'),
    WorldTime(url: 'Pacific/Tahiti', location: 'Tahiti', flag: ''),
    WorldTime(url: 'Pacific/Tarawa', location: 'Tarawa', flag: ''),
    WorldTime(
        url: 'Pacific/Tongatapu', location: 'Tongatapu', flag: ''),
    WorldTime(url: 'Pacific/Wake', location: 'Wake', flag: ''),
    WorldTime(url: 'Pacific/Wallis', location: 'Wallis', flag: ''),
    WorldTime(url: 'WET', location: 'Wet', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
    WorldTime(url: '', location: '', flag: ''),
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
      ),
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
