# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
subway = Subway.create(:last_updated_at => Time.now)
red = Branch.create(:color => 'red', :subway => subway)
green = Branch.create(:color => 'green', :subway => subway)
blue = Branch.create(:color => 'blue', :subway => subway)

84.times do
  Train.create(:subway => subway)
end

Station.create([
  {  :branch => red, :color => 'red',  :latitude => 50.464853086055115, :longitude => 30.354784727096558100 , :name => "Akademgorodok" },
  {  :branch => red, :color => 'red',  :latitude => 50.45618571221397, :longitude => 30.363775491714478 , :name => "Zhitomirskaya" },
  {  :branch => red, :color => 'red',  :latitude => 50.457620139071935, :longitude => 30.39191722869873 , :name => "Svyatoshin" },
  {  :branch => red, :color => 'red',  :latitude => 50.45892474668018, :longitude => 30.404738187789917 , :name => "Nivki" },
  {  :branch => red, :color => 'red',  :latitude => 50.458726667213625, :longitude => 30.420563220977783 , :name => "Beresteyskaya" },
  {  :branch => red, :color => 'red',  :latitude => 50.45487419816461, :longitude => 30.445207357406616 , :name => "Shulyavskaya" },
  {  :branch => red, :color => 'red',  :latitude => 50.450795976863944, :longitude => 30.466493368148804 , :name => "Politehnicheskij Institut" },
  {  :branch => red, :color => 'red',  :latitude => 50.44157940487428, :longitude => 30.488412380218506 , :name => "Vokzalnaya" },
  {  :branch => red, :color => 'red',  :latitude => 50.44407331720806, :longitude => 30.505846738815308 , :name => "Universitet" },
  { :branch => red, :color => 'red',  :latitude => 50.44537146613966, :longitude => 30.518646240234375 , :name => "Teatralnaya"},
  { :branch => red, :color => 'red',  :latitude => 50.447427934450346, :longitude => 30.525619983673096 , :name => "Khreshyatik" },
  { :branch => red, :color => 'red',  :latitude => 50.44431928500311, :longitude => 30.545361042022705 , :name => "Arsenalnaya" },
  { :branch => red, :color => 'red',  :latitude => 50.440984946100784, :longitude => 30.558536052703857 , :name => "Dnepr" },
  { :branch => red, :color => 'red',  :latitude => 50.44611617761047, :longitude => 30.5769681930542 , :name => "Gidropark" },
  { :branch => red, :color => 'red',  :latitude => 50.45173188117417, :longitude => 30.59817910194397 , :name => "Levoberezhnaya" },
  { :branch => red, :color => 'red',  :latitude => 50.45643844772193, :longitude => 30.61386466026306 , :name => "Darnitsa" },
  {  :branch => red, :color => 'red',  :latitude => 50.459717056251485, :longitude => 30.6303870677948 , :name => "Chernigovskaya" },
  {  :branch => red, :color => 'red',  :latitude => 50.46434087407976, :longitude => 30.644441843032837 , :name => "Lesnaya" },
  {  :branch => green, :color => 'green',  :latitude => 50.47632518035787, :longitude => 30.43088436126709 , :name => "Syrets" },
  {  :branch => green, :color => 'green',  :latitude => 50.473402792003135, :longitude => 30.448222160339355 , :name => "Dorogozhichi" },
  {  :branch => green, :color => 'green',  :latitude => 50.461711431936614, :longitude => 30.481910705566406 , :name => "Lukyanovskaya" },
  {  :branch => green, :color => 'green',  :latitude => 50.448295586962324, :longitude => 30.513582229614258 , :name => "Zolotie Vorota" },
  { :branch => green, :color => 'green',  :latitude => 50.43818337321576, :longitude => 30.52074909210205 , :name => "Palatitudez Sporta" },
  {  :branch => green, :color => 'green',  :latitude => 50.436898694100606, :longitude => 30.53173542022705 , :name => "Klovskaya" },
  {  :branch => green, :color => 'green',  :latitude => 50.427522214219664, :longitude => 30.53898811340332 , :name => "Pecherskaya" },
  {  :branch => green, :color => 'green',  :latitude => 50.41814387730614, :longitude => 30.54495334625244 , :name => "Druzhby Narodov" },
  {  :branch => green, :color => 'green',  :latitude => 50.40113235969953, :longitude => 30.56169033050537 , :name => "Vydubichi " },
  {  :branch => green, :color => 'green',  :latitude => 50.394183777852554, :longitude => 30.60439109802246 , :name => "Slavutich" },
  {  :branch => green, :color => 'green',  :latitude => 50.396126200540024, :longitude => 30.616321563720703 , :name => "Osokorki" },
  { :branch => green, :color => 'green',  :latitude => 50.39787704856195, :longitude => 30.633788108825684 , :name => "Poznyaki" },
  { :branch => green, :color => 'green',  :latitude => 50.400557909273466, :longitude => 30.651683807373047 , :name => "Harkovskaya" },
  { :branch => green, :color => 'green',  :latitude => 50.40315655808972, :longitude => 30.670480728149414 , :name => "Virlitsa" },
  {  :branch => green, :color => 'green',  :latitude => 50.403320678494595, :longitude => 30.683012008666992 , :name => "Borisposkaya" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.41286603742956, :longitude => 30.524611473083496 , :name => "Lybedskaya" },
  { :branch => blue, :color => 'blue',  :latitude => 50.420495471498114, :longitude => 30.520920753479004 , :name => "Pa:latitudez Ukraina" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.432142344542534, :longitude => 30.516586303710938 , :name => "Respublikanskij Standion" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.43957734728102, :longitude => 30.51680088043213 , :name => "Ploshyad Lva Tolstogo" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.4511102241713, :longitude => 30.522465705871582 , :name => "Majdan Nezalejnosti" },
  { :branch => blue, :color => 'blue',  :latitude => 50.45892474668018, :longitude => 30.524954795837402 , :name => "Pochtovaya Ploshyad" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.46586383474418, :longitude => 30.515213012695312 , :name => "Kontraktovaya Ploshyad" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.47329354033729, :longitude => 30.505084991455078 , :name => "Tarasa Shevchenko" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.486046966428134, :longitude => 30.497918128967285 , :name => "Petrovka" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.50196343778538, :longitude => 30.49954891204834 , :name => "Obolon" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.51222576184578, :longitude => 30.49851894378662 , :name => "Minskaya" },
  {  :branch => blue, :color => 'blue',  :latitude => 50.52248585562935, :longitude => 30.498991012573242 , :name => "Geroev Dnepra" }
])