categories = Category.create([
  {categoryname:"Hotel",categorylao:"ໂຮງແຮມ"},
  {categoryname:"Food",categorylao:"ອາຫານ"},
  {categoryname:"Education",categorylao:"ການສຶກສາ"},
  {categoryname:"Wholesale",categorylao:"ຂາຍສົ່ງ"},
  {categoryname:"Retail",categorylao:"ຂາຍຍ່ອຍ"},
  {categoryname:"Service",categorylao:"ການບໍລິການ"},
  {categoryname:"Construction",categorylao:"ການກໍ່ສ້າງ"},
  {categoryname:"Clinic(Hospital)",categorylao:"ໂຮງໝໍ"},
  {categoryname:"Government Office",categorylao:"ຫ້ອງການລັດ"},
  {categoryname:"Bank",categorylao:"ທະນາຄານ"},
  {categoryname:"Manufactory",categorylao:"ໂຮງງານ"},
  {categoryname:"ransport",categorylao:"ການຂົນສົ່ງ"}
])

cities = City.create([
  {cityname: "Vientiane", city_lao: "ຄອນຫລວງວຽງຈັນ"},
  {cityname: "Luangparbang", city_lao: "ຫຼວງພະບາງ"},
  {cityname: "Champasak", city_lao:"ຈຳປາສັກ"}
])

districts = District.create([
{city_id: 1, districtname:"Parkngeun", district_lao:"ປາກງື່ມ"},
{city_id: 1, districtname:"Sisattanak", district_lao:"ສີສັດຕະນາກ"},
{city_id: 1, districtname:"Sikhottabong", district_lao:"ສີໂຄດຕະບອງ"},
{city_id: 1, districtname:"Chanthabury", district_lao:"ຈັນທະບູລີ"},
{city_id: 1, districtname:"saysettha", district_lao:"ໄຊເສດຖາ"},
{city_id: 1, districtname:"saythany", district_lao:"ໄຊທານີ"},
{city_id: 1, districtname:"Naxaythong", district_lao:"ນາຊາຍທອງ"},
{city_id: 1, districtname:"Hatsaifong", district_lao:"ຫາດຊາຍຟອງ"},
{city_id: 1, districtname:"Sangthong", district_lao:"ສັງທອງ"},

{city_id: 2, districtname:"Luangparbang", district_lao:"ຫຼວງພະບາງ"},
{city_id: 2, districtname:"Xiengngen", district_lao:"ຊຽງເງິນ"},
{city_id: 2, districtname:"Nan", district_lao:"ນານ"},
{city_id: 2, districtname:"Pakou", district_lao:"ປາກອູ"},
{city_id: 2, districtname:"Nambak", district_lao:"ນ້ຳບາກ"},
{city_id: 2, districtname:"Ngoy", district_lao:"ງອຍ"},
{city_id: 2, districtname:"Pakxeng", district_lao:"ປາກແຊງ"},
{city_id: 2, districtname:"Phonxai", district_lao:"ໂພນໄຊ"},
{city_id: 2, districtname:"Chomephet", district_lao:"ຈອມເພັດ"},
{city_id: 2, districtname:"Viengkham", district_lao:"ວຽງຄຳ"},
{city_id: 2, districtname:"Phoukhoun", district_lao:"ພູຄູນ"},
{city_id: 2, districtname:"Phongthon", district_lao:"ໂພນທອງ"},

{city_id: 3, districtname:"Paksa", district_lao:"ປາກເຊ"},
{city_id: 3, districtname:"Sanasomboun", district_lao:"ຊະນະສົມບູນ"},
{city_id: 3, districtname:"Bachiengchaleunsouk", district_lao:"ບາຈຽງຈະເລີນສຸກ"},
{city_id: 3, districtname:"Paksong", district_lao:"ປາກຊ່ອງ"},
{city_id: 3, districtname:"Pathoumphone", district_lao:"ປະທຸມພອນ"},
{city_id: 3, districtname:"Phonthong", district_lao:"ໂພນທອງ"},
{city_id: 3, districtname:"Champasak", district_lao:"ຈຳປາສັກ"},
{city_id: 3, districtname:"Soukhouma", district_lao:"ສຸກຄຸມາ"},
{city_id: 3, districtname:"Meanlapamok", district_lao:"ມິນລະປະໂມກ"},
{city_id: 3, districtname:"Khong", district_lao:"ໂຂງ"}

])


users = User.create([
  {
    email: 'testor@gmail.com',
    name: 'bestbot',
    password: '5d93ceb70e2bf5daa84ec3d0cd2c731a',
    sex: 'f',
    tel: '01122223333',
    birthdate: '19991111',
    usertype: 'user'
  },
  {
    email: 'carpenta@hanmail.net',
    name: 'ilhwan',
    password: '5d93ceb70e2bf5daa84ec3d0cd2c731a',
    sex: 'm',
    tel: '01026092841',
    birthdate: '19991111',
    usertype: 'user'
  },
  {
    email: 'mc2e@nate.com',
    name: 'kyungkoo',
    password: '5d93ceb70e2bf5daa84ec3d0cd2c731a',
    sex: 'm',
    tel: '01033334444',
    birthdate: '19991111',
    usertype: 'company',
    marketname: 'sample market',
    marketphone: 'sample phone', 
    marketemail: 'market@sample.com',
    address: 'sample marekt address'
  }
])

markets = Market.create([
  {
    marketname: 'beuty shop',
    marketname_lao: 'beuty shop ບັນຊ',
    user_id: 1,
    category1: 'Accountants',
    category2: 'Transport Services',
    city: 'test city',
    district: 'test  district',
    address: 'test address',
    address_lao: 'test address lao',
    open1: '10:00',
    close1: '19:00',
    desc1: 'MON,TUE',
    open2: '9:00',
    close2: '15:00',
    desc2: 'THU, FRI',
    open3: '14:00',
    close3: '18:00',
    desc3: 'SAT, SUN',
    fax: '111-2222-2222',
    cellphone: '333-4444-4444',
    tel: '123-452-1134',
    email: '1@1.2',
    homepage: 'test.hompage.com',
    latitude: '21.2312321312',
    longitude: '32.42132132',
    delyn: 'no',
    detail_lao: 'detail lao test',
    detail_eng: 'detail eng test',
    keyword: 'testkeyword',
    keyword_lao: 'testkeyword_ບັນຊ'
  }
])

rooms = Room.create([
  {
    roomname: 'sample room',
    roomname_lao: 'sample room ບັນຊ',
    user_id: 1,
    address: 'test address',
    address_lao: 'test address lao',
    cellphone: '333-4444-4444',
    tel: '123-452-1134',
    email: '1@1.2',
    latitude: '21.2312321312',
    longitude: '32.42132132',
    delyn: 'no',
    detail_lao: 'detail lao test',
    detail_eng: 'detail eng test',
    deposit: 2000,
    rent: 101,
    rstruct: 'one room',
    rcount: 1,
    bcount: 1,
    bform: 'apartment',
    bfloor: 3,
    parea: 11,
    aarea: 12,
    options: 'sink, air con',
    mexpenses: 100,
    livedays: 90,
    parkingyn: 'yes',
    elevatoryn: 'no',
    poolyn: 'no'
  }
])


favorites = Favorite.create([
  {
    user_id: 1,
    room_id: 1
  }
])
