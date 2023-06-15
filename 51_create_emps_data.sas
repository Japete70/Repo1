data EMPS;
LENGTH Company  $30  
       Department  $40  
       BirthDate  8  
       Country  $2  
       Gender  $1  
       HireDate  8  
       EmployeeID  8  
       Name  $40  
       TermDate  8  
       JobTitle  $25  
       ManagerID  8  
       OrgGroup  $40  
       Salary  8  
       Section  $40 ;
LABEL  Company= 'Company'
       Department= 'Department'
       BirthDate= 'Employee Birth Date'
       Country= 'Employee Country'
       Gender= 'Employee Gender'
       HireDate= 'Employee Hire Date'
       EmployeeID= 'Employee ID'
       Name= 'Employee Name'
       TermDate= 'Employee Termination Date'
       JobTitle= 'Job Title'
       ManagerID= 'Manager ID'
       OrgGroup= 'Group'
       Salary= 'Annual Salary'
       Section= 'Section';
FORMAT BirthDate  DATE9.  
/*       Country  $CTRYFMT.  */
/*       Gender  $GENFMT.  */
       HireDate  DATE9.  
       EmployeeID  12.  
       ManagerID 12.
       TermDate  DATE9.  
       Salary  DOLLAR13. ;
  infile datalines delimiter=',' dsd;
  input  EmployeeID Country $
         Company $ Department $ 
         Section OrgGroup $ JobTitle 
         Name $ Gender $
         Salary BirthDate 
         HireDate TermDate
         ManagerID;
return;
datalines;
99999999,"","Logistics","Stock & Shipping","Stock & Shipping","Internet/Catalog Sales Management","","Internet/Catalog Sales","",.,.,.,.,.
120101,"AU","Orion Australia","Sales Management","Sales Management","Sales Management","Director","Patrick Lu","M",163040,7535,17348,.,120261
120102,"AU","Orion Australia","Sales Management","Sales Management","Sales Management","Sales Manager","Tom Zhou","M",108255,4971,12205,.,120101
120103,"AU","Orion Australia","Sales Management","Sales Management","Sales Management","Sales Manager","Wilson Dawes","M",87975,-2535,6575,.,120101
120104,"AU","Orion Australia","Administration","Administration","Administration","Administration Manager","Kareen Billington","F",46230,-600,9132,.,120101
120105,"AU","Orion Australia","Administration","Administration","Administration","Secretary I","Liz Povey","F",27110,6929,15826,.,120101
120106,"AU","Orion Australia","Administration","Administration","Administration","Office Assistant II","John Hornsey","M",26960,-4026,6575,.,120104
120107,"AU","Orion Australia","Administration","Administration","Shipping Charges","Office Assistant III","Sherie Sheedy","F",30475,-2536,6606,.,120104
120108,"AU","Orion Australia","Administration","Goods Entrance","Stock Admin","Warehouse Assistant II","Gladys Gromek","F",27660,10280,18475,.,120104
120109,"AU","Orion Australia","Administration","Goods Entrance","Stock Admin","Warehouse Assistant I","Gabriele Baker","F",26495,11306,18536,.,120104
120110,"AU","Orion Australia","Administration","Goods Entrance","Stock Admin","Warehouse Assistant III","Dennis Entwisle","M",28615,-2233,8705,.,120104
120111,"AU","Orion Australia","Administration","Security","Security Guards","Security Guard II","Ubaldo Spillane","M",26895,-2353,6879,.,120104
120112,"AU","Orion Australia","Administration","Security","Security Guards","Security Guard I","Ellis Glattback","F",26550,4796,12600,.,120104
120113,"AU","Orion Australia","Administration","Security","Security Guards","Security Guard II","Riu Horsey","F",26870,-4253,6575,.,120104
120114,"AU","Orion Australia","Administration","Security","Security Guards","Security Manager","Jeannette Buddery","F",31285,-4345,6575,.,120104
120115,"AU","Orion Australia","Administration","Service Center","Service","Service Assistant I","Hugh Nichollas","M",26500,10355,18110,.,120104
120116,"AU","Orion Australia","Administration","Service Center","Service","Service Assistant II","Austen Ralston","M",29250,1259,8797,.,120104
120117,"AU","Orion Australia","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker III","Bill Mccleary","M",31670,3176,11048,.,120104
120118,"AU","Orion Australia","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker II","Darshi Hartshorn","M",28090,1249,10409,.,120104
120119,"AU","Orion Australia","Engineering","Engineering","Electrical Workshop","Electrician IV","Lal Elleman","M",30255,5103,15341,.,120104
120120,"AU","Orion Australia","Engineering","Engineering","Electrical Workshop","Electrician II","Krishna Peiris","F",27645,-4258,6575,.,120104
120121,"AU","Orion Australia","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Irenie Elvish","F",26600,-4169,6575,.,120102
120122,"AU","Orion Australia","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Christina Ngan","F",27475,-523,8217,.,120102
120123,"AU","Orion Australia","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Kimiko Hotstone","F",26190,3193,10866,17928,120102
120124,"AU","Orion Australia","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Lucian Daymond","M",26480,1228,8460,.,120102
120125,"AU","Orion Australia","Sales","Sales","Children Sports","Sales Rep. IV","Fong Hofmeister","M",32040,-391,8460,17744,120102
120126,"AU","Orion Australia","Sales","Sales","Children Sports","Sales Rep. II","Satyakam Denny","M",26780,11951,18475,.,120102
120127,"AU","Orion Australia","Sales","Sales","Clothes","Sales Rep. II","Sharryn Clarkson","F",28100,8404,15645,.,120102
120128,"AU","Orion Australia","Sales","Sales","Clothes","Sales Rep. IV","Monica Kletschkus","F",30890,11152,18567,.,120102
120129,"AU","Orion Australia","Sales","Sales","Clothes","Sales Rep. III","Alvin Roebuck","M",30070,3248,10866,17256,120102
120130,"AU","Orion Australia","Sales","Sales","Clothes","Sales Rep. I","Kevin Lyon","M",26955,10575,18383,.,120102
120131,"AU","Orion Australia","Sales","Sales","Golf","Sales Rep. I","Marinus Surawski","M",26910,8668,17167,.,120102
120132,"AU","Orion Australia","Sales","Sales","Golf","Sales Rep. III","Fancine Kaiser","F",28525,-2462,8309,.,120102
120133,"AU","Orion Australia","Sales","Sales","Golf","Sales Rep. II","Petrea Soltau","F",27440,11069,18536,.,120102
120134,"AU","Orion Australia","Sales","Sales","Golf","Sales Rep. II","Sian Shannan","M",28015,-2400,6575,18443,120102
120135,"AU","Orion Australia","Sales","Sales","Indoor Sports","Sales Rep. IV","Alexei Platts","M",32490,4774,15249,17652,120102
120136,"AU","Orion Australia","Sales","Sales","Indoor Sports","Sales Rep. I","Atul Leyden","M",26605,8659,17198,.,120102
120137,"AU","Orion Australia","Sales","Sales","Shoes","Sales Rep. III","Marina Iyengar","F",29715,8471,18322,.,120102
120138,"AU","Orion Australia","Sales","Sales","Shoes","Sales Rep. I","Shani Duckett","F",25795,8592,18444,.,120102
120139,"AU","Orion Australia","Sales","Sales","Shoes","Sales Rep. II","Fang Wilson","F",26810,11187,18506,.,120102
120140,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. I","Michael Minas","M",26970,11903,18536,.,120103
120141,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. II","Amanda Liebman","F",27465,11759,18383,.,120103
120142,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. III","Vincent Eastley","M",29695,11122,18444,.,120103
120143,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. II","Phu Sloey","M",26790,1232,9770,.,120103
120144,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. III","Viney Barbis","M",30265,11023,18536,.,120103
120145,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. II","Sandy Aisbitt","M",26060,2943,10744,.,120103
120146,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. I","Wendall Cederlund","M",25985,1370,8979,18170,120103
120147,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. II","Skev Rusli","F",26580,11706,18536,.,120103
120148,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. III","Michael Zubak","M",28480,-2301,8187,.,120103
120149,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. I","Judy Chantharasy","F",26390,6899,13515,.,120103
120150,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. III","John Filo","M",29965,-541,9709,17652,120103
120151,"AU","Orion Australia","Sales","Sales","Outdoors","Sales Rep. II","Julianna Phaiyakounh","F",26520,-4058,6575,.,120103
120152,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. I","Sean Dives","M",26515,8521,17988,.,120102
120153,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. I","Samantha Waal","F",27260,8527,15341,18293,120102
120154,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. III","Caterina Hayawardhana","F",30490,-4182,6575,.,120102
120155,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. III","Narelle James","F",29990,10339,18353,.,120102
120156,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. I","Gerry Snellings","F",26445,11932,18322,.,120102
120157,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. II","Leonid Karavdic","M",27860,11009,18597,.,120102
120158,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. III","Daniel Pilgrim","M",36605,3117,11504,18140,120102
120159,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. IV","Lynelle Phoumirath","F",30765,2976,11139,.,120102
120160,"AU","Orion Australia","Sales","Sales","Racket Sports","Sales Rep. I","Chuck Segrave","M",27115,-479,6848,.,120102
120161,"AU","Orion Australia","Sales","Sales","Running - Jogging","Sales Rep. III","Rosette Martines","F",30785,11754,18536,.,120102
120162,"AU","Orion Australia","Sales","Sales","Running - Jogging","Sales Rep. I","Randal Scordia","M",27215,11936,18294,.,120102
120163,"AU","Orion Australia","Sales","Sales","Running - Jogging","Sales Rep. II","Brett Magrath","M",26735,3064,12784,.,120102
120164,"AU","Orion Australia","Sales","Sales","Running - Jogging","Sales Rep. II","Ranj Stamalis","F",27450,1425,9528,.,120102
120165,"AU","Orion Australia","Sales","Sales","Running - Jogging","Sales Rep. I","Tadashi Pretorius","M",27050,10305,18322,.,120102
120166,"AU","Orion Australia","Sales","Sales","Running - Jogging","Sales Rep. IV","Fadi Nowd","M",30660,-4218,6575,18505,120102
120167,"AU","Orion Australia","Sales","Sales","Running - Jogging","Sales Rep. I","Kimiko Tilley","F",25185,-607,6606,18352,120102
120168,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. I","Selina Barcoe","F",25275,10310,18567,.,120102
120169,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. III","Cos Tannous","M",28135,10228,18383,.,120102
120170,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. III","Alban Kingston","M",28830,6630,13423,18566,120102
120171,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. II","Alena Moody","F",26205,10427,18506,.,120102
120172,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. III","Edwin Comber","M",28345,-4292,6575,.,120102
120173,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. I","Hernani Osborn","M",26715,-677,7822,17744,120102
120174,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. I","Doungkamol Simms","F",26850,-4374,6575,18200,120102
120175,"AU","Orion Australia","Sales","Sales","Swim Sports","Sales Rep. I","Andrew Conolly","M",25745,11918,18536,.,120102
120176,"AU","Orion Australia","Sales","Sales","Team Sports","Sales Rep. I","Koavea Pa)","M",26095,11270,18567,.,120102
120177,"AU","Orion Australia","Sales","Sales","Team Sports","Sales Rep. III","Franca Kierce","F",28745,8495,15372,.,120102
120178,"AU","Orion Australia","Sales","Sales","Team Sports","Sales Rep. II","Billy Plested","M",26165,-404,6665,.,120102
120179,"AU","Orion Australia","Sales","Sales","Team Sports","Sales Rep. III","Matsuoka Wills","M",28510,6648,17532,17775,120102
120180,"AU","Orion Australia","Sales","Sales","Team Sports","Sales Rep. II","Vino George","M",26970,-553,8370,.,120102
120181,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Lorian Cantatore","F",27065,12020,18597,18717,120103
120182,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Geok-Seng Barreto","M",25020,10505,18597,18627,120103
120183,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Brig Blanton","M",26910,5001,18597,18627,120103
120184,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Ari Moore","M",25820,-2222,18597,18747,120103
120185,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Sharon Bahlman","F",25080,6671,18597,18658,120103
120186,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Merryn Quinby","F",26795,8509,18597,18808,120103
120187,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Reyne Catenacci","F",26665,10571,18597,18778,120103
120188,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Shanmuganathan Baran","F",26715,-671,18597,18627,120103
120189,"AU","Orion Australia","Sales","Sales","Temporary","Temp. Sales Rep.","Mihailo Lachlan","M",25180,10411,18597,18717,120103
120190,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Ivor Czernezkyi","M",24100,10566,17837,18017,120103
120191,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Jannene Graham-Rowe","F",24015,1112,17167,17347,120103
120192,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Anthony Nichollas","M",26185,10355,18049,18231,120103
120193,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Russell Streit","M",24515,10567,18141,18321,120103
120194,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Reece Harwood","M",25985,10493,17929,18109,120103
120195,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Jina Fiocca","F",24990,10586,18444,18627,120103
120196,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Merle Hieds","F",24025,10257,17167,17347,120103
120197,"AU","Orion Australia","Sales","Sales","Trainees","Trainee","Kerrin Dillin","F",25580,-511,17167,17347,120103
120198,"AU","Orion Australia","Sales","Sales","Winter Sports","Sales Rep. III","Meera Body","F",28025,11708,18597,.,120103
120672,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Shipping Manager","Verne Guscott","M",60980,3159,13209,.,120659
120673,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Shipping Agent II","Pearl Santomaggio","F",35935,-4205,6575,.,120672
120691,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Shipping Manager","Sek Habres","M",49240,-4125,6575,.,120659
120692,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Shipping Agent II","Rit Tregonning","M",32485,-405,9587,.,120691
120693,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Shipping Agent I","Diaz Tellam","M",26625,1217,8552,.,120691
120694,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Warehouse Assistant I","Sharon Leazer","F",27365,11916,18353,.,120691
120695,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Warehouse Assistant II","Trent Moffat","M",28180,3116,12235,18474,120691
120696,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Warehouse Assistant I","Peter Pettolino","M",26615,-505,6634,18352,120691
120697,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Warehouse Assistant IV","Madelaine Fouche","F",29625,11866,18414,.,120691
120698,"AU","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Asia/Pacific","Warehouse Assistant I","Geoff Kistanna","M",26160,-594,7518,17956,120691
120199,"BE","Orion Belgium","Administration","Administration","Administration","Office Assistant I","Sandra Van Dorst","F",26400,-2550,17167,.,120201
120200,"BE","Orion Belgium","Administration","Administration","Administration","Office Assistant II","Eddy Alvaro","F",26155,1309,17167,.,120201
120201,"BE","Orion Belgium","Administration","Administration","Shipping Charges","Administration Manager","Jean-Pierre Lemahieu","M",43280,6775,17167,.,120257
120202,"BE","Orion Belgium","Administration","Goods Entrance","Stock Admin","Warehouse Assistant III","Marie-Hélène Verboomen","F",29370,-470,17167,.,120201
120203,"BE","Orion Belgium","Administration","Goods Entrance","Stock Admin","Warehouse Assistant II","Blanche Molenaar","F",28455,-2436,17167,.,120201
120204,"BE","Orion Belgium","Administration","Security","Security Guards","Security Guard I","Joel Geers","M",25045,11068,18567,.,120201
120205,"BE","Orion Belgium","Administration","Security","Security Guards","Security Guard I","Kas Jagannathan","M",30980,1169,17167,.,120201
120206,"BE","Orion Belgium","Administration","Security","Security Guards","Security Manager","Rein Claerbout","F",30665,6894,17167,.,120201
120207,"BE","Orion Belgium","Administration","Service Center","Service","Service Assistant I","Jacky Rahier","M",26010,2979,17167,.,120201
120208,"BE","Orion Belgium","Administration","Service Center","Service","Service Assistant III","Gilbert Croufer","M",30860,3118,17167,.,120201
120209,"BE","Orion Belgium","Administration","Service Center","Service","Service Assistant I","Elfriede Depienne","F",27000,4935,17167,.,120201
120210,"BE","Orion Belgium","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker II","Nelly Baes","F",29805,-2428,17167,.,120201
120211,"BE","Orion Belgium","Engineering","Engineering","Electrical Workshop","Electrician I","Johan Sarrand","M",27260,-2237,17167,.,120201
120212,"BE","Orion Belgium","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Judd Masson","M",26720,1191,17167,18505,120258
120213,"BE","Orion Belgium","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Adrian de Pelsemaecker","M",27310,-442,17167,.,120258
120214,"BE","Orion Belgium","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Anne-Mie Nelles","F",26030,8439,18536,.,120258
120215,"BE","Orion Belgium","Sales","Sales","Children Sports","Sales Rep. I","Anne-Laure Arnotte","F",26600,-541,17167,18596,120258
120216,"BE","Orion Belgium","Sales","Sales","Children Sports","Sales Rep. II","Justo Fabry","M",27935,3004,17167,.,120258
120217,"BE","Orion Belgium","Sales","Sales","Children Sports","Sales Rep. II","Raffaele Staessen","M",28230,4803,17167,.,120258
120218,"BE","Orion Belgium","Sales","Sales","Clothes","Sales Rep. I","Martine Steverlinck","F",26630,10522,18353,.,120258
120219,"BE","Orion Belgium","Sales","Sales","Clothes","Sales Rep. IV","Karel de Streel","F",32470,2982,17167,.,120258
120220,"BE","Orion Belgium","Sales","Sales","Golf","Sales Rep. II","Mark Henri Van Grimbergen","M",27365,4887,17167,.,120258
120221,"BE","Orion Belgium","Sales","Sales","Golf","Sales Rep. II","Denise Deguent","F",26860,3056,17167,.,120258
120222,"BE","Orion Belgium","Sales","Sales","Golf","Sales Rep. II","Olivier Bolsens","M",27080,3230,17167,.,120258
120223,"BE","Orion Belgium","Sales","Sales","Golf","Sales Rep. I","Vincent Dumalin","M",27265,11799,18383,.,120258
120224,"BE","Orion Belgium","Sales","Sales","Golf","Sales Rep. II","Elsy Ernoux","F",26350,1359,17167,17652,120258
120225,"BE","Orion Belgium","Sales","Sales","Golf","Sales Rep. I","Maddy Chardome","F",25240,11865,18628,.,120258
120226,"BE","Orion Belgium","Sales","Sales","Indoor Sports","Sales Rep. II","Wambuna Menten","M",28185,11698,18567,.,120258
120227,"BE","Orion Belgium","Sales","Sales","Shoes","Sales Rep. I","Marie Pascale Baffioni","M",27485,11928,18294,.,120258
120228,"BE","Orion Belgium","Sales","Sales","Shoes","Sales Rep. II","Rigo Dossantos","F",26500,4966,17167,17652,120258
120229,"BE","Orion Belgium","Sales","Sales","Outdoors","Sales Rep. II","Jean-Pierre Allouche","M",27185,8482,17167,.,120258
120230,"BE","Orion Belgium","Sales","Sales","Outdoors","Sales Rep. I","Rufijn Valvekens","M",27155,4902,17167,17897,120258
120231,"BE","Orion Belgium","Sales","Sales","Outdoors","Sales Rep. II","Luk de Muylder","M",27070,3173,17167,.,120258
120232,"BE","Orion Belgium","Sales","Sales","Outdoors","Sales Rep. II","Elly Bullen","F",27800,-4064,17167,18109,120258
120233,"BE","Orion Belgium","Sales","Sales","Outdoors","Sales Rep. I","Els Van Der Hulst","F",26020,-383,17167,.,120258
120234,"BE","Orion Belgium","Sales","Sales","Outdoors","Sales Rep. II","Candice Famaey","F",26515,-2380,17167,.,120258
120235,"BE","Orion Belgium","Sales","Sales","Outdoors","Sales Rep. III","Claude Temara","F",30590,10972,18567,.,120258
120236,"BE","Orion Belgium","Sales","Sales","Racket Sports","Sales Rep. I","Chrystelle Vandenbosch","F",27475,8428,17167,.,120258
120237,"BE","Orion Belgium","Sales","Sales","Racket Sports","Sales Rep. II","Sheila Geyssens","F",28300,11056,18567,.,120258
120238,"BE","Orion Belgium","Sales","Sales","Racket Sports","Sales Rep. I","André Biermans","M",26870,11728,18536,.,120258
120239,"BE","Orion Belgium","Sales","Sales","Running - Jogging","Sales Rep. III","Michel Van de Broeck","M",29700,1396,17167,.,120258
120240,"BE","Orion Belgium","Sales","Sales","Running - Jogging","Sales Rep. III","Cathy Hurchon","F",29725,3002,17167,.,120258
120241,"BE","Orion Belgium","Sales","Sales","Running - Jogging","Sales Rep. I","Rigo Ramakers","F",25430,1387,17167,17652,120258
120242,"BE","Orion Belgium","Sales","Sales","Running - Jogging","Sales Rep. I","Edwin Houba","M",26865,6748,17167,.,120258
120243,"BE","Orion Belgium","Sales","Sales","Running - Jogging","Sales Rep. II","Jari Stokowski","M",28580,5044,17167,17347,120258
120244,"BE","Orion Belgium","Sales","Sales","Swim Sports","Sales Rep. II","Jan Van Caillie","M",28140,3140,17167,.,120258
120245,"BE","Orion Belgium","Sales","Sales","Swim Sports","Sales Rep. II","Hilde de Potter","M",28130,11881,18322,.,120258
120246,"BE","Orion Belgium","Sales","Sales","Swim Sports","Sales Rep. IV","Mrc Lemaître","M",31645,-4122,17167,.,120258
120247,"BE","Orion Belgium","Sales","Sales","Swim Sports","Sales Rep. II","Jean-Marc Shannon","M",26590,12046,18414,.,120258
120248,"BE","Orion Belgium","Sales","Sales","Team Sports","Sales Rep. II","François Stas de Richelle","M",26800,-4032,17167,18170,120258
120249,"BE","Orion Belgium","Sales","Sales","Team Sports","Sales Rep. II","William Looze","M",27775,4773,17167,.,120258
120250,"BE","Orion Belgium","Sales","Sales","Team Sports","Sales Rep. II","Madeleine Rajkowski","F",26015,-382,17167,.,120258
120251,"BE","Orion Belgium","Sales","Sales","Temporary","Temp. Sales Rep.","Fr. Rochtus","M",25785,1349,18597,18778,120258
120252,"BE","Orion Belgium","Sales","Sales","Temporary","Temp. Sales Rep.","Jean-Do Lenaers","M",26450,4968,18597,18686,120258
120253,"BE","Orion Belgium","Sales","Sales","Temporary","Temp. Sales Rep.","Harry Demaeghdt","M",25545,-666,18597,18717,120258
120254,"BE","Orion Belgium","Sales","Sales","Temporary","Temp. Sales Rep.","Linda Cheruy","F",27310,-378,18597,18778,120258
120255,"BE","Orion Belgium","Sales","Sales","Winter Sports","Sales Rep. II","Gaétane Hubrecht","F",27285,3137,17167,.,120258
120256,"BE","Orion Belgium","Sales","Sales","Winter Sports","Sales Rep. I","Remi Vermaillen","M",27295,-2383,17167,18170,120258
120257,"BE","Orion Belgium","Sales Management","Sales Management","Sales Management","Director","Pascal Hast","F",156245,6716,17167,.,120261
120258,"BE","Orion Belgium","Sales Management","Sales Management","Sales Management","Sales Manager","Kenneth Van Heembeek","M",83305,-558,17167,.,120257
120416,"DE","Orion Germany","Administration","Administration","Administration","Office Assistant II","Annedore Thiel","F",28500,1103,10866,17622,120420
120417,"DE","Orion Germany","Administration","Administration","Administration","Office Assistant I","Wilfried Kalbfuss","M",25850,4790,14579,18170,120420
120418,"DE","Orion Germany","Administration","Administration","Administration","Office Assistant I","Rainer Breitel","M",25705,11902,18567,.,120420
120419,"DE","Orion Germany","Administration","Administration","Administration","Office Assistant II","Ralph Vohl","M",26735,11768,18475,.,120420
120420,"DE","Orion Germany","Administration","Administration","Shipping Charges","Administration Manager","Berit Brunen","F",48100,5025,12054,.,120510
120421,"DE","Orion Germany","Administration","Administration","Shipping Charges","Clerk I","Bernd Recklies","M",26090,11022,18383,.,120420
120422,"DE","Orion Germany","Administration","Goods Entrance","Stock Admin","Warehouse Manager","Esther Schmidt","F",42305,8360,18414,.,120420
120423,"DE","Orion Germany","Administration","Goods Entrance","Stock Admin","Warehouse Assistant I","Martina Wimmer","F",26380,-2233,8067,.,120422
120424,"DE","Orion Germany","Administration","Goods Entrance","Stock Admin","Warehouse Assistant III","Ullrich Beekmann","M",27760,2989,10135,.,120422
120425,"DE","Orion Germany","Administration","Security","Security Guards","Security Manager","Itta Schneider","F",30545,10420,18353,.,120420
120426,"DE","Orion Germany","Administration","Security","Security Guards","Security Guard II","Irmgard Spill","F",35525,11272,18383,.,120425
120427,"DE","Orion Germany","Administration","Service Center","Service","Service Assistant II","Karl W. Spieth","M",28540,11969,18506,.,120425
120428,"DE","Orion Germany","Administration","Service Center","Service","Service Assistant I","Frank Braune","M",27180,10959,18414,.,120425
120429,"DE","Orion Germany","Engineering","Engineering","Cabinet Maker's Workshop","Engineering Manager","Walter Szczesniak","M",36240,10330,17988,.,120420
120430,"DE","Orion Germany","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker I","Hans-Martin de Palacios","M",27250,6826,16131,.,120429
120431,"DE","Orion Germany","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker II","Susanne Kitta","F",29430,8476,16649,.,120429
120432,"DE","Orion Germany","Engineering","Engineering","Electrical Workshop","Electrician III","Michael Endejan","M",27735,11151,18383,.,120429
120433,"DE","Orion Germany","Engineering","Engineering","Electrical Workshop","Electrician I","Curt-M. Thompson","M",27380,10511,18444,.,120429
120434,"DE","Orion Germany","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Birgit Steppich","F",26575,8576,18414,.,120511
120435,"DE","Orion Germany","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Astrid Poggensee","F",28680,-369,9163,.,120511
120436,"DE","Orion Germany","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Claudia Rückmann","F",25400,1171,10318,.,120511
120437,"DE","Orion Germany","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Friedrich Kuch","M",26195,8731,18597,.,120511
120438,"DE","Orion Germany","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Elisabeth Seyd","F",26535,-703,6756,.,120511
120439,"DE","Orion Germany","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Egmont Gstettner","M",28590,1102,10774,.,120511
120440,"DE","Orion Germany","Sales","Sales","Children Sports","Sales Rep. I","Torsten Ember","M",27325,8744,18536,.,120511
120441,"DE","Orion Germany","Sales","Sales","Children Sports","Sales Rep. II","Roland Meuer","M",26065,11750,18444,.,120511
120442,"DE","Orion Germany","Sales","Sales","Children Sports","Sales Rep. IV","Susanne Solomé","F",39185,5098,11748,.,120511
120443,"DE","Orion Germany","Sales","Sales","Children Sports","Sales Rep. II","Manfred Von Rueden","M",26805,11889,18597,.,120511
120444,"DE","Orion Germany","Sales","Sales","Clothes","Sales Rep. I","Urs Penschke","M",26145,-4060,6575,.,120511
120445,"DE","Orion Germany","Sales","Sales","Clothes","Sales Rep. I","Michaela Kockerols","F",25820,-658,10166,.,120511
120446,"DE","Orion Germany","Sales","Sales","Clothes","Sales Rep. III","Peter Melcher","M",29660,-4117,6575,.,120511
120447,"DE","Orion Germany","Sales","Sales","Clothes","Sales Rep. II","Jasmin Bonifer","F",27900,1313,10135,18140,120511
120448,"DE","Orion Germany","Sales","Sales","Clothes","Sales Rep. I","Kristina Engelhardt","F",26290,11998,18506,.,120511
120449,"DE","Orion Germany","Sales","Sales","Golf","Sales Rep. I","Susana Pohl","F",26775,11267,18567,.,120511
120450,"DE","Orion Germany","Sales","Sales","Golf","Sales Rep. I","Rüdiger Neske","M",25265,8725,17653,.,120511
120451,"DE","Orion Germany","Sales","Sales","Golf","Sales Rep. III","Sabine Weidenbach","F",28140,6894,15280,.,120511
120452,"DE","Orion Germany","Sales","Sales","Indoor Sports","Sales Rep. II","Wolfgang Jülich","M",27310,10340,18475,.,120511
120453,"DE","Orion Germany","Sales","Sales","Indoor Sports","Sales Rep. III","Melanie Delarue","F",30620,4864,13209,.,120511
120454,"DE","Orion Germany","Sales","Sales","Shoes","Sales Rep. II","Ingolf Zehetmaier","M",27770,-499,8005,.,120511
120455,"DE","Orion Germany","Sales","Sales","Shoes","Sales Rep. I","Ellen Raum-Deinzer","F",28555,-4352,6575,17562,120511
120456,"DE","Orion Germany","Sales","Sales","Shoes","Sales Rep. I","Robert Derheld","M",25465,11129,18294,.,120511
120457,"DE","Orion Germany","Sales","Sales","Shoes","Sales Rep. IV","Robert Schhenoy","M",31745,8620,16741,.,120511
120458,"DE","Orion Germany","Sales","Sales","Shoes","Sales Rep. II","Margitta Kleinmichel","F",27480,-376,8279,.,120511
120459,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. I","Kerrin Saucke","F",26150,-2508,6575,.,120512
120460,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. II","Frank-Michael Wehlmann","M",28040,1104,9497,.,120512
120461,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. III","Christian Sellschopp","M",30385,3070,10166,.,120512
120462,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. II","Kurt Schmid","M",28580,-2458,6575,.,120512
120463,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. III","Andreas Aichele","M",28310,6678,17532,.,120512
120464,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. II","Werner Forbeger","M",27205,8685,15826,.,120512
120465,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. I","Jürgen Blank","M",25045,8454,17287,.,120512
120466,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. II","Sabine Krüger","F",26125,10394,18322,.,120512
120467,"DE","Orion Germany","Sales","Sales","Outdoors","Sales Rep. III","Ralf Haberer","M",28115,-4343,6575,.,120512
120468,"DE","Orion Germany","Sales","Sales","Racket Sports","Sales Rep. II","Horst Koehler","M",28360,6707,14701,.,120511
120469,"DE","Orion Germany","Sales","Sales","Racket Sports","Sales Rep. III","Kristin Lütkepohl","F",28185,8655,15979,.,120511
120470,"DE","Orion Germany","Sales","Sales","Racket Sports","Sales Rep. III","Carlhans Lange","M",28120,4830,14000,.,120511
120471,"DE","Orion Germany","Sales","Sales","Racket Sports","Sales Rep. I","Detlef Kreuzhuber","M",26960,-652,8887,.,120511
120472,"DE","Orion Germany","Sales","Sales","Racket Sports","Sales Rep. I","Helmar Kamp","M",25010,6577,13301,.,120511
120473,"DE","Orion Germany","Sales","Sales","Racket Sports","Sales Rep. II","Peter Matthäus","M",27180,-2295,6575,.,120511
120474,"DE","Orion Germany","Sales","Sales","Racket Sports","Sales Rep. I","Eva Hellbach","F",26250,10498,17837,.,120511
120475,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. II","Yvonne Ilmer","F",27375,11020,18597,.,120511
120476,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. II","Andre Kroll","M",28325,-406,8797,.,120511
120477,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. II","Gerhard Hanshen","M",26095,1299,7944,.,120511
120478,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. I","Svenja Holomek","F",25560,3181,14031,.,120511
120479,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. II","Martin Bujard","M",27745,10306,18049,.,120511
120480,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. II","Brigitte Böhme","F",26535,11704,18506,.,120511
120481,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. I","Christoph Hilgartner","M",26620,3131,14031,.,120511
120482,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. III","Petra Tepel","F",29805,-631,8126,.,120511
120483,"DE","Orion Germany","Sales","Sales","Running - Jogging","Sales Rep. III","Karl Damwerth","M",28430,-2442,6575,.,120511
120484,"DE","Orion Germany","Sales","Sales","Swim Sports","Sales Rep. I","Janina Scheuermann","F",27225,10526,18536,.,120511
120485,"DE","Orion Germany","Sales","Sales","Swim Sports","Sales Rep. III","Ernst-Ludwig Hembury","M",29490,-2219,8705,.,120511
120486,"DE","Orion Germany","Sales","Sales","Swim Sports","Sales Rep. I","Annette Freund","F",25395,-4243,6575,.,120511
120487,"DE","Orion Germany","Sales","Sales","Swim Sports","Sales Rep. II","Claudia Korte","F",33040,11846,18353,.,120511
120488,"DE","Orion Germany","Sales","Sales","Swim Sports","Sales Rep. I","Sigrun Bonk","F",27350,6687,14335,17897,120511
120489,"DE","Orion Germany","Sales","Sales","Swim Sports","Sales Rep. I","Hartmut Fürniß","M",26830,6772,16680,.,120511
120490,"DE","Orion Germany","Sales","Sales","Team Sports","Sales Rep. I","Inga Schmidt","F",27425,1148,8217,.,120511
120491,"DE","Orion Germany","Sales","Sales","Team Sports","Sales Rep. II","Matthias Knittel","M",26600,10567,18506,.,120511
120492,"DE","Orion Germany","Sales","Sales","Team Sports","Sales Rep. II","Gerhard Dierstein","M",26675,6671,17075,.,120511
120493,"DE","Orion Germany","Sales","Sales","Team Sports","Sales Rep. I","Jürgen Kreuzhuber","M",25240,-652,8432,.,120511
120494,"DE","Orion Germany","Sales","Sales","Team Sports","Sales Rep. I","Gudrun Menzel","F",27050,3006,12419,.,120511
120495,"DE","Orion Germany","Sales","Sales","Team Sports","Sales Rep. III","Hans-Jürgen Leyer","M",28180,6802,17136,17775,120511
120496,"DE","Orion Germany","Sales","Sales","Temporary","Temp. Sales Rep.","Simone Roegner","F",25240,4903,18597,18627,120512
120497,"DE","Orion Germany","Sales","Sales","Temporary","Temp. Sales Rep.","Andreas Riegger","M",26695,8671,18597,18747,120512
120498,"DE","Orion Germany","Sales","Sales","Temporary","Temp. Sales Rep.","Dorit Peinelt","F",25665,1165,18597,18747,120512
120499,"DE","Orion Germany","Sales","Sales","Temporary","Temp. Sales Rep.","Helmut Rettig","M",28885,-4199,18597,18686,120512
120500,"DE","Orion Germany","Sales","Sales","Temporary","Temp. Sales Rep.","Markus Haßelberg","M",27475,6923,18597,18717,120512
120501,"DE","Orion Germany","Sales","Sales","Temporary","Temp. Sales Rep.","Ina Geiß","F",26140,6891,18597,18747,120512
120502,"DE","Orion Germany","Sales","Sales","Trainees","Trainee","Rüdiger Cruse","M",24050,11940,18659,18839,120512
120503,"DE","Orion Germany","Sales","Sales","Trainees","Trainee","Alfons Rockel","M",24580,11010,18171,18352,120512
120504,"DE","Orion Germany","Sales","Sales","Trainees","Trainee","Christina Muster","F",24030,5041,17167,17347,120512
120505,"DE","Orion Germany","Sales","Sales","Trainees","Trainee","Katharina Laute","F",25545,3026,17167,17347,120512
120506,"DE","Orion Germany","Sales","Sales","Winter Sports","Sales Rep. I","Kathrin Janko","F",25990,-2455,6575,.,120512
120507,"DE","Orion Germany","Sales","Sales","Winter Sports","Sales Rep. I","Dieter Kohlepp","M",25795,2954,10318,.,120512
120508,"DE","Orion Germany","Sales","Sales","Winter Sports","Sales Rep. I","Elsbeth Schmolt","F",27270,1369,9405,18413,120512
120509,"DE","Orion Germany","Sales","Sales","Winter Sports","Sales Rep. I","Wolfgang Wohleber","M",26345,-670,6575,18109,120512
120510,"DE","Orion Germany","Sales Management","Sales Management","Sales Management","Director","Sabine Doerr","F",151940,7539,15280,.,120261
120511,"DE","Orion Germany","Sales Management","Sales Management","Sales Management","Sales Manager","Alexandra Bulst","F",87535,-4239,6575,.,120510
120512,"DE","Orion Germany","Sales Management","Sales Management","Sales Management","Sales Manager","Sigrid Lotfalikhani","F",86055,2977,13484,.,120510
120513,"DE","Orion Germany","Sales Management","Sales Management","Sales Management","Secretary III","Doris Schnabel","F",35080,4957,15372,.,120510
120281,"DK","Orion Denmark","Administration","Administration","Administration","Office Assistant II","Birthe Kirstine Wiuff","F",26605,-682,9132,.,120283
120282,"DK","Orion Denmark","Administration","Administration","Administration","Secretary III","Vagn Kristian Thiberg","M",29915,11206,18353,.,120283
120283,"DK","Orion Denmark","Administration","Administration","Shipping Charges","Administration Manager","Kurt Ivan Toxwenius","M",25780,11226,17837,.,120331
120284,"DK","Orion Denmark","Administration","Goods Entrance","Stock Admin","Warehouse Manager","Knud Aage Bøttger","M",42095,3153,11262,.,120283
120285,"DK","Orion Denmark","Administration","Goods Entrance","Stock Admin","Warehouse Assistant I","Lars Peter Clausen","M",27425,3274,14153,.,120284
120286,"DK","Orion Denmark","Administration","Security","Security Guards","Security Manager","Jørgen Bak Galdyn","M",32970,8535,15219,.,120283
120287,"DK","Orion Denmark","Administration","Security","Security Guards","Security Guard II","Steffen Louis Grenander","M",27230,-2555,6575,.,120286
120288,"DK","Orion Denmark","Administration","Service Center","Service","Service Assistant I","Jan Lennart Pilgård","M",27165,-703,7336,.,120283
120289,"DK","Orion Denmark","Administration","Service Center","Service","Service Assistant II","Eva Charlotte Lindsted-Holm","F",29620,5091,12478,.,120283
120290,"DK","Orion Denmark","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker II","Lisbeth Christina Dreisig","F",29020,4811,12054,.,120283
120291,"DK","Orion Denmark","Engineering","Engineering","Electrical Workshop","Electrician III","Brita Fisker Gloggengiehser","F",28345,11120,18536,.,120283
120292,"DK","Orion Denmark","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Fritz Thomas Helvig","M",30450,6714,15796,18231,120330
120293,"DK","Orion Denmark","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Poul Ib Schlegel","M",26975,11826,18628,.,120330
120294,"DK","Orion Denmark","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Anne Kirstine Markussen","F",26655,-479,8948,.,120330
120295,"DK","Orion Denmark","Sales","Sales","Children Sports","Sales Rep. II","Inez Anna Ingves","F",27170,5022,13605,.,120330
120296,"DK","Orion Denmark","Sales","Sales","Children Sports","Sales Rep. III","Michael Svend Hersbo","M",30610,11804,18536,.,120330
120297,"DK","Orion Denmark","Sales","Sales","Clothes","Sales Rep. I","Per Hjort Stensgaard","M",26635,3083,11566,.,120330
120298,"DK","Orion Denmark","Sales","Sales","Clothes","Sales Rep. II","Lars Guldberg Berggreen","M",26415,10297,18597,.,120330
120299,"DK","Orion Denmark","Sales","Sales","Golf","Sales Rep. II","Leif Ove Perauer","M",26435,-4086,6575,18413,120330
120300,"DK","Orion Denmark","Sales","Sales","Golf","Sales Rep. III","Hanne Løvkvist Schumann","F",29805,-4073,6575,.,120330
120301,"DK","Orion Denmark","Sales","Sales","Indoor Sports","Sales Rep. I","Rita Tidemann Jernfort","F",29710,-473,9921,.,120330
120302,"DK","Orion Denmark","Sales","Sales","Shoes","Sales Rep. I","Jane Sehested Kirchhof","F",26180,3045,10196,.,120330
120303,"DK","Orion Denmark","Sales","Sales","Shoes","Sales Rep. II","Henning Egon Plesner","M",28555,-2394,6606,18413,120330
120304,"DK","Orion Denmark","Sales","Sales","Outdoors","Sales Rep. III","Ilse Bryde","F",28825,11828,18475,.,120330
120305,"DK","Orion Denmark","Sales","Sales","Outdoors","Sales Rep. I","Mogens Georg Bothager","M",27260,-2344,8432,.,120330
120306,"DK","Orion Denmark","Sales","Sales","Outdoors","Sales Rep. II","Connie Ilona Lurendreier","F",26585,11113,18322,.,120330
120307,"DK","Orion Denmark","Sales","Sales","Outdoors","Sales Rep. IV","Ellinor Jytte Buusman","F",30170,3239,11170,.,120330
120308,"DK","Orion Denmark","Sales","Sales","Outdoors","Sales Rep. II","Birgit Melgaard Vikkelsø","F",27555,-626,9740,17531,120330
120309,"DK","Orion Denmark","Sales","Sales","Outdoors","Sales Rep. II","Allan Moslund Brusch","M",27325,-2305,6575,.,120330
120310,"DK","Orion Denmark","Sales","Sales","Racket Sports","Sales Rep. I","Anita Dahl Ohlsen","F",25495,-4061,6575,18352,120330
120311,"DK","Orion Denmark","Sales","Sales","Racket Sports","Sales Rep. III","Bo Sønderberg Skjørringe","M",28585,11131,18475,18659,120330
120312,"DK","Orion Denmark","Sales","Sales","Racket Sports","Sales Rep. II","Leif Wiid Petersen","M",27645,11947,18353,.,120330
120313,"DK","Orion Denmark","Sales","Sales","Racket Sports","Sales Rep. II","Anders Ove Ingerslev","M",26230,-4267,6575,17897,120330
120314,"DK","Orion Denmark","Sales","Sales","Running - Jogging","Sales Rep. II","Dorthe Skjærris Hye-Knudsen","F",27840,1365,8460,18201,120330
120315,"DK","Orion Denmark","Sales","Sales","Running - Jogging","Sales Rep. II","Lone Wibeke Wiuff","F",27785,-639,7336,.,120330
120316,"DK","Orion Denmark","Sales","Sales","Running - Jogging","Sales Rep. IV","Merethe Pedersen Lykkeskov","F",31495,1201,10074,.,120330
120317,"DK","Orion Denmark","Sales","Sales","Running - Jogging","Sales Rep. II","Johnny Krøyer Jaedeke","M",28160,8405,17653,.,120330
120318,"DK","Orion Denmark","Sales","Sales","Running - Jogging","Sales Rep. I","Anders Hvarre","M",27250,3053,12843,.,120330
120319,"DK","Orion Denmark","Sales","Sales","Swim Sports","Sales Rep. III","Jørgen Leif Støvring","M",29340,8521,16437,.,120330
120320,"DK","Orion Denmark","Sales","Sales","Swim Sports","Sales Rep. II","Martha Kiilerich Damkier","F",27740,10232,16861,17652,120330
120321,"DK","Orion Denmark","Sales","Sales","Swim Sports","Sales Rep. I","Henning Leif Stefansen","M",25250,11975,18383,18567,120330
120322,"DK","Orion Denmark","Sales","Sales","Swim Sports","Sales Rep. I","Jim Keller Seide","M",25560,6718,16376,.,120330
120323,"DK","Orion Denmark","Sales","Sales","Team Sports","Sales Rep. II","Merete Møller Birkholm","F",27980,10431,17714,.,120330
120324,"DK","Orion Denmark","Sales","Sales","Team Sports","Sales Rep. II","Ketty Nielsen","F",28580,11003,18567,.,120330
120325,"DK","Orion Denmark","Sales","Sales","Temporary","Temp. Sales Rep.","Nadja Micheelsen","F",26370,11774,18597,18778,120330
120326,"DK","Orion Denmark","Sales","Sales","Temporary","Temp. Sales Rep.","Hanne Møller Hardsner","F",25640,1190,18597,18627,120330
120327,"DK","Orion Denmark","Sales","Sales","Temporary","Temp. Sales Rep.","Bjarne Rask Skou","M",25165,-2283,18597,18717,120330
120328,"DK","Orion Denmark","Sales","Sales","Winter Sports","Sales Rep. I","Elin Hugger","F",25530,-603,7761,.,120330
120329,"DK","Orion Denmark","Sales","Sales","Winter Sports","Sales Rep. I","Jesper Reinholt Jagd","M",25965,-627,8582,18078,120330
120330,"DK","Orion Denmark","Sales Management","Sales Management","Sales Management","Sales Manager","Bjarne Gudomlund Buch-Larsen","M",87750,7602,16983,.,120331
120331,"DK","Orion Denmark","Sales Management","Sales Management","Sales Management","Director","Harald Schkliaroff","M",151285,4842,14579,.,120261
120817,"ES","Orion Spain","Administration","Administration","Administration","Office Assistant I","Carlos Sifre Vila","M",26310,-376,9344,.,120819
120818,"ES","Orion Spain","Administration","Administration","Administration","Office Assistant II","Horacio González Aguilera","M",27780,-4349,6575,.,120819
120819,"ES","Orion Spain","Administration","Administration","Shipping Charges","Administration Manager","María Martínez Martínez","F",47200,11033,18353,.,120880
120820,"ES","Orion Spain","Administration","Goods Entrance","Stock Admin","Warehouse Manager","Pablo Martínez","M",43740,4802,14945,.,120819
120821,"ES","Orion Spain","Administration","Security","Security Guards","Security Guard I","José María Montserrat","M",26960,8684,18414,.,120820
120822,"ES","Orion Spain","Administration","Security","Security Guards","Security Guard III","María Dolores García","F",28825,11253,18506,.,120820
120823,"ES","Orion Spain","Administration","Service Center","Service","Service Assistant I","Rafael Suárez de Peón Carbó","M",26645,8539,15765,.,120820
120824,"ES","Orion Spain","Administration","Service Center","Service","Service Assistant II","Jaime Esnaola Sukía","M",27520,-4083,6575,.,120820
120825,"ES","Orion Spain","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker II","Jorge Azemar Santiago","M",28800,8741,16588,.,120819
120826,"ES","Orion Spain","Engineering","Engineering","Electrical Workshop","Electrician I","Víctor Pérez Cimarro","M",26500,11916,18475,.,120819
120827,"ES","Orion Spain","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Francisco Martínez Terol","M",25365,2974,11748,.,120881
120828,"ES","Orion Spain","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Juan Cuellas","M",26340,10367,18475,.,120881
120829,"ES","Orion Spain","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Juan Pablo Vilalta","M",29920,-4206,6575,.,120881
120830,"ES","Orion Spain","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Ignacio Álvarez Morales","M",27985,1221,10105,.,120881
120831,"ES","Orion Spain","Sales","Sales","Children Sports","Sales Rep. III","Nicolás Carriles","M",28365,11007,18414,.,120881
120832,"ES","Orion Spain","Sales","Sales","Children Sports","Sales Rep. II","Pilar Álvarez Sanz","F",26625,6585,14854,.,120881
120833,"ES","Orion Spain","Sales","Sales","Children Sports","Sales Rep. III","Catalina Martínez de Irujo García","F",31275,4826,15219,.,120881
120834,"ES","Orion Spain","Sales","Sales","Clothes","Sales Rep. I","Lourdes Iriarte","F",25225,11728,18444,.,120881
120835,"ES","Orion Spain","Sales","Sales","Clothes","Sales Rep. I","María José López","F",27480,1164,8521,17409,120881
120836,"ES","Orion Spain","Sales","Sales","Clothes","Sales Rep. IV","Inés Niqui Salvat","F",31515,8711,16618,.,120881
120837,"ES","Orion Spain","Sales","Sales","Golf","Sales Rep. I","José Rodríguez Mazquiarán","M",26180,6880,13788,.,120881
120838,"ES","Orion Spain","Sales","Sales","Golf","Sales Rep. II","Ana Montalvo","F",26970,1422,10897,.,120881
120839,"ES","Orion Spain","Sales","Sales","Golf","Sales Rep. I","Francisco Javier Sala López","M",25420,4880,13149,.,120881
120840,"ES","Orion Spain","Sales","Sales","Indoor Sports","Sales Rep. II","Ismael Alonso Sanz","M",28160,-4063,6575,.,120881
120841,"ES","Orion Spain","Sales","Sales","Shoes","Sales Rep. I","María Aránzazu Serrats","F",22705,3250,9952,17286,120881
120842,"ES","Orion Spain","Sales","Sales","Shoes","Sales Rep. I","Miguel Ángel Laguna Hurtado","M",26795,-2372,8248,.,120881
120843,"ES","Orion Spain","Sales","Sales","Shoes","Sales Rep. I","Gregorio Díez Martín","M",25660,5103,15675,.,120881
120844,"ES","Orion Spain","Sales","Sales","Shoes","Sales Rep. I","Luis Bautista","M",25895,8663,18141,.,120881
120845,"ES","Orion Spain","Sales","Sales","Shoes","Sales Rep. I","Alicia Sánchez-Manjavacas","F",25855,4785,12692,.,120881
120846,"ES","Orion Spain","Sales","Sales","Shoes","Sales Rep. I","Concepción Jiménez Castillo","F",25070,3146,13635,17805,120881
120847,"ES","Orion Spain","Sales","Sales","Shoes","Sales Rep. II","María Ángeles Lacambra","F",28595,1446,10958,.,120881
120848,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. III","Carlos Vivar Zamorano","M",28665,-728,6575,.,120881
120849,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. IV","Félix Marcos","M",31765,8627,17684,.,120881
120850,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. III","Izaskun Manzanero","F",34060,6837,16315,.,120881
120851,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. I","Javier Vázquez Eceizabarrena","M",26610,11085,18202,18383,120881
120852,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. I","José Ramón de la Cruz","M",27035,8654,16557,.,120881
120853,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. I","María Teresa Freire","F",26645,-4377,6575,.,120881
120854,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. II","José Luis Rubio Blanco","M",28295,1271,11840,.,120881
120855,"ES","Orion Spain","Sales","Sales","Outdoors","Sales Rep. IV","María Teresa Falcón de Andrés","F",30895,-4276,6575,.,120881
120856,"ES","Orion Spain","Sales","Sales","Racket Sports","Sales Rep. I","Pedro Oller","M",30835,10525,18383,.,120881
120857,"ES","Orion Spain","Sales","Sales","Racket Sports","Sales Rep. II","Pedro Pérez Cimarro","M",27495,11916,17416,18358,120881
120858,"ES","Orion Spain","Sales","Sales","Racket Sports","Sales Rep. II","Izaskun Picouto Ramos","F",26325,8740,17532,.,120881
120859,"ES","Orion Spain","Sales","Sales","Running - Jogging","Sales Rep. I","José Antonio Vidal Peroy","M",25965,6583,13484,.,120881
120860,"ES","Orion Spain","Sales","Sales","Running - Jogging","Sales Rep. I","Conxi Goldstein","F",25560,8534,16284,.,120881
120861,"ES","Orion Spain","Sales","Sales","Running - Jogging","Sales Rep. IV","Alberto Calvo Pumpido","M",30765,5097,13149,.,120881
120862,"ES","Orion Spain","Sales","Sales","Swim Sports","Sales Rep. III","Joan Fernández","M",29505,6751,15614,17317,120881
120863,"ES","Orion Spain","Sales","Sales","Swim Sports","Sales Rep. II","María Aránzazu Sierra","F",27990,5075,15887,.,120881
120864,"ES","Orion Spain","Sales","Sales","Swim Sports","Sales Rep. III","María Ángeles Cervantes Blanco","F",28460,-2235,7305,.,120881
120865,"ES","Orion Spain","Sales","Sales","Swim Sports","Sales Rep. IV","Amaia García Hoz","F",30565,-4292,6575,.,120881
120866,"ES","Orion Spain","Sales","Sales","Swim Sports","Sales Rep. II","Antonio Cárdenas Ramos","M",27050,-4067,6575,.,120881
120867,"ES","Orion Spain","Sales","Sales","Swim Sports","Sales Rep. III","María Dolores Remiro","F",29540,8537,15887,.,120881
120868,"ES","Orion Spain","Sales","Sales","Team Sports","Sales Rep. I","Lourdes Miralles Miralles","F",26430,12025,18536,.,120881
120869,"ES","Orion Spain","Sales","Sales","Temporary","Temp. Sales Rep.","Victoria Sánchez Héctor","F",27485,1432,17867,18048,120881
120870,"ES","Orion Spain","Sales","Sales","Temporary","Temp. Sales Rep.","Nadia Ribera Lapiedra","F",25005,10428,15928,.,120881
120871,"ES","Orion Spain","Sales","Sales","Temporary","Temp. Sales Rep.","Antonio Castillo Oya","M",21580,2931,16406,17225,120881
120872,"ES","Orion Spain","Sales","Sales","Temporary","Temp. Sales Rep.","Mónica Puigros","F",25480,10961,16461,.,120881
120873,"ES","Orion Spain","Sales","Sales","Temporary","Temp. Sales Rep.","Mónica García-Santesmases","F",26175,-441,18597,18627,120881
120874,"ES","Orion Spain","Sales","Sales","Temporary","Temp. Sales Rep.","Rafael Serrano","M",25985,4840,17136,17622,120881
120875,"ES","Orion Spain","Sales","Sales","Temporary","Temp. Sales Rep.","Mar Vives Civit","F",25215,11249,17501,17987,120881
120876,"ES","Orion Spain","Sales","Sales","Trainees","Trainee","Alfonso Tormo","M",26380,10450,17867,18048,120881
120877,"ES","Orion Spain","Sales","Sales","Winter Sports","Sales Rep. I","Lluis Rivera Caja","M",26680,-2412,6575,.,120881
120878,"ES","Orion Spain","Sales","Sales","Winter Sports","Sales Rep. II","Tomás Torrelles","M",27540,2986,13666,.,120881
120879,"ES","Orion Spain","Sales","Sales","Winter Sports","Sales Rep. IV","Emilia González Quesada","F",40755,1351,10348,.,120881
120880,"ES","Orion Spain","Sales Management","Sales Management","Sales Management","Director","Eugenia Mirón Gómez","F",163315,5040,12874,.,120261
120881,"ES","Orion Spain","Sales Management","Sales Management","Sales Management","Sales Manager","Juan Sánchez Marín","M",82880,4900,14823,.,120880
120882,"ES","Orion Spain","Sales Management","Sales Management","Sales Management","Secretary III","José Luis Ceruelo Fernández","M",29585,1354,7975,.,120880
120332,"FR","Orion France","Administration","Administration","Administration","Office Assistant I","Dominique Claverie","M",25070,5026,14214,.,120335
120333,"FR","Orion France","Administration","Administration","Administration","Office Assistant II","Juan Alberto Duchemin","M",26330,6761,14854,.,120335
120334,"FR","Orion France","Administration","Administration","Administration","Secretary III","Veronique Cambien","F",28015,8605,16071,.,120335
120335,"FR","Orion France","Administration","Administration","Shipping Charges","Administration Manager","Jean-Claude Willmann","M",47230,-2487,7396,.,120412
120336,"FR","Orion France","Administration","Goods Entrance","Stock Admin","Warehouse Manager","Anne Poisson","F",43950,7346,16557,.,120335
120337,"FR","Orion France","Administration","Goods Entrance","Stock Admin","Warehouse Assistant I","Laurent Le Neve - Ricordel","M",26540,-2409,7426,17256,120336
120338,"FR","Orion France","Administration","Goods Entrance","Stock Admin","Warehouse Assistant II","Alain Rodrigues","M",28415,10532,18536,.,120336
120339,"FR","Orion France","Administration","Security","Security Guards","Security Manager","Jean-Pierre Abdelhamid","M",31690,-4042,6575,.,120335
120340,"FR","Orion France","Administration","Security","Security Guards","Security Guard I","Valerie Robain","F",27330,8459,18597,.,120339
120341,"FR","Orion France","Administration","Security","Security Guards","Security Guard II","Patrick Charlier","M",26220,10980,18322,.,120339
120342,"FR","Orion France","Administration","Service Center","Service","Service Assistant I","Alice Cousin","F",23585,1317,10805,17197,120335
120343,"FR","Orion France","Administration","Service Center","Service","Service Assistant I","Michelle Cayet","F",27300,-4219,6575,.,120335
120344,"FR","Orion France","Administration","Service Center","Service","Service Assistant III","Etienne Bourdas","F",31595,4939,14153,.,120335
120345,"FR","Orion France","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker IV","Eliane Pastorelli","F",32560,10371,18414,.,120335
120346,"FR","Orion France","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker I","Jean-Michel Michon","M",26960,-703,8826,.,120335
120347,"FR","Orion France","Engineering","Engineering","Electrical Workshop","Electrician III","Regine Balestan","F",28940,8653,18079,.,120335
120348,"FR","Orion France","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Jean-Luc Lebourgeois","M",28205,-4187,6575,17197,120415
120349,"FR","Orion France","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Cedric Desqueyroux","M",30510,-4086,6575,.,120415
120350,"FR","Orion France","Sales","Sales","Assorted Sports Articles","Sales Rep. IV","Eric Golliot","M",32770,-4221,6575,.,120415
120351,"FR","Orion France","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Marie-Christine Le Bihen","F",27030,6611,15310,.,120415
120352,"FR","Orion France","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Michele Dewerdt","F",25490,10336,18659,.,120415
120353,"FR","Orion France","Sales","Sales","Children Sports","Sales Rep. I","Valerie Fichou","F",26240,-4372,6575,.,120415
120354,"FR","Orion France","Sales","Sales","Children Sports","Sales Rep. II","Cristiana Parniere","F",26340,11766,18567,.,120415
120355,"FR","Orion France","Sales","Sales","Children Sports","Sales Rep. I","Sandra Guillemard","F",26610,10436,18294,.,120415
120356,"FR","Orion France","Sales","Sales","Children Sports","Sales Rep. IV","Anne Broussole","F",32680,-4327,6575,17500,120415
120357,"FR","Orion France","Sales","Sales","Children Sports","Sales Rep. II","Bernard Bladt","M",28045,4977,11870,.,120415
120358,"FR","Orion France","Sales","Sales","Children Sports","Sales Rep. I","Daniel Dezard","M",25100,10971,18628,.,120415
120359,"FR","Orion France","Sales","Sales","Clothes","Sales Rep. II","Christelle Bourrier","F",27555,5046,13454,.,120415
120360,"FR","Orion France","Sales","Sales","Clothes","Sales Rep. I","Bernard Toumi","M",26325,-2320,6575,17897,120415
120361,"FR","Orion France","Sales","Sales","Clothes","Sales Rep. II","Agnes de Fourtou","F",26790,-4350,6575,.,120415
120362,"FR","Orion France","Sales","Sales","Golf","Sales Rep. II","Marie Antoinette Boudard","F",26780,11967,18597,.,120415
120363,"FR","Orion France","Sales","Sales","Golf","Sales Rep. IV","Agnes Saulou","F",31605,-4129,6575,18140,120415
120364,"FR","Orion France","Sales","Sales","Golf","Sales Rep. IV","Christine Redais","F",32270,1148,9648,.,120415
120365,"FR","Orion France","Sales","Sales","Indoor Sports","Sales Rep. II","Sylvie Latimier","F",26020,1258,9132,.,120415
120366,"FR","Orion France","Sales","Sales","Indoor Sports","Sales Rep. I","Francoise Schmaltz","F",26945,-4145,6575,17805,120415
120367,"FR","Orion France","Sales","Sales","Shoes","Sales Rep. I","July Chiron","F",25320,3004,10013,.,120415
120368,"FR","Orion France","Sales","Sales","Shoes","Sales Rep. I","Andre Gaudin","M",27095,4759,12784,.,120415
120369,"FR","Orion France","Sales","Sales","Shoes","Sales Rep. I","Jean Desgens","M",27225,6834,14976,.,120415
120370,"FR","Orion France","Sales","Sales","Shoes","Sales Rep. II","Marie Claire Cros","F",27795,10393,18263,.,120415
120371,"FR","Orion France","Sales","Sales","Shoes","Sales Rep. IV","Philippe Monsieurle Directeur","M",30635,8494,17167,.,120415
120372,"FR","Orion France","Sales","Sales","Shoes","Sales Rep. II","Michel Ramanantoandro","M",26835,-608,6575,17409,120415
120373,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. IV","Cyril Soudant","M",31590,-423,8005,16921,120413
120374,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. I","Marie-Paul Olive","F",25425,-4279,6575,.,120413
120375,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. I","Isabelle de Milleville","F",25050,4781,13605,.,120413
120376,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. I","Maryline Leger","F",26745,-4290,6575,.,120413
120377,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. II","Eric Dagiral","M",28040,10570,17745,18170,120413
120378,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. III","Gabriele Vigneron","F",28135,4793,14214,.,120413
120379,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. III","Bernard Caron","M",30540,-2263,6971,.,120413
120380,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. IV","Bernard David","M",32075,4871,14915,17225,120413
120381,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. I","Didier Regent","M",26975,3087,12935,.,120413
120382,"FR","Orion France","Sales","Sales","Outdoors","Sales Rep. II","Anne-Laure Rish","F",27070,1357,8460,.,120413
120383,"FR","Orion France","Sales","Sales","Racket Sports","Sales Rep. I","Abdelhadi Sarpy","M",25190,3057,12235,18017,120415
120384,"FR","Orion France","Sales","Sales","Racket Sports","Sales Rep. II","Marc Zampa","M",26210,1213,10166,.,120415
120385,"FR","Orion France","Sales","Sales","Racket Sports","Sales Rep. I","Ivan Carbillet","M",26865,1224,11413,17256,120415
120386,"FR","Orion France","Sales","Sales","Running - Jogging","Sales Rep. II","Christian Barkat","M",27490,-2485,6575,.,120415
120387,"FR","Orion France","Sales","Sales","Running - Jogging","Sales Rep. I","Berengere Schultz","F",25065,-4334,6575,.,120415
120388,"FR","Orion France","Sales","Sales","Running - Jogging","Sales Rep. III","Francois Delclos","M",28635,1134,9436,.,120415
120389,"FR","Orion France","Sales","Sales","Swim Sports","Sales Rep. II","Marc Duhil","M",26420,4845,13880,.,120415
120390,"FR","Orion France","Sales","Sales","Swim Sports","Sales Rep. III","Alain Henry","M",30480,11212,17837,.,120415
120391,"FR","Orion France","Sales","Sales","Swim Sports","Sales Rep. III","Marie-Pierre Brunel","F",29445,10374,17045,.,120415
120392,"FR","Orion France","Sales","Sales","Swim Sports","Sales Rep. IV","Lauro Hardouin","M",30340,4944,14823,17439,120415
120393,"FR","Orion France","Sales","Sales","Swim Sports","Sales Rep. I","Paulina Moisenier","F",26625,1222,11993,.,120415
120394,"FR","Orion France","Sales","Sales","Team Sports","Sales Rep. III","Thierry Merlette","M",30235,6608,14153,.,120415
120395,"FR","Orion France","Sales","Sales","Team Sports","Sales Rep. II","Patrick Hill","M",27145,11293,17929,.,120415
120396,"FR","Orion France","Sales","Sales","Team Sports","Sales Rep. IV","Francois Louis","M",31430,-4053,6575,.,120415
120397,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Marie-Therese Triebel","F",27480,11828,18597,18658,120413
120398,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Damien Bascle","M",26910,1133,18597,18658,120413
120399,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Stephan Gaubert","M",25605,-447,18597,18627,120413
120400,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Franck Ferbu","M",27225,5096,18597,18778,120413
120401,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Marie-Pierre Maire","F",26725,6601,18597,18778,120413
120402,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Nathalie Dienne","F",26325,10575,18597,18686,120413
120403,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Georges Gauchi","M",26115,8587,18597,18627,120413
120404,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Marc Demaria","M",27100,11019,18597,18778,120413
120405,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Joelle Turpin","F",27180,-4187,18597,18686,120413
120406,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Gaelle Gonsard","F",26420,11174,18597,18686,120413
120407,"FR","Orion France","Sales","Sales","Temporary","Temp. Sales Rep.","Christophe Suraud","M",27170,10398,18597,18747,120413
120408,"FR","Orion France","Sales","Sales","Trainees","Trainee","Albert Laly","M",26330,12049,18659,18839,120413
120409,"FR","Orion France","Sales","Sales","Winter Sports","Sales Rep. III","Isabelle Charonnat","F",28460,8699,17957,.,120413
120410,"FR","Orion France","Sales","Sales","Winter Sports","Sales Rep. I","Monique Venchiarutti","F",25105,2965,11139,.,120413
120411,"FR","Orion France","Sales","Sales","Winter Sports","Sales Rep. II","Andre Noel","M",27600,-714,7244,.,120413
120412,"FR","Orion France","Sales Management","Sales Management","Sales Management","Vice President","Rodolphe Boudard","M",192940,8273,17318,.,120261
120413,"FR","Orion France","Sales Management","Sales Management","Sales Management","Sales Manager","Abderhaman Ferbu","M",84285,5096,15857,.,120412
120414,"FR","Orion France","Sales Management","Sales Management","Sales Management","Secretary IV","Jacques Billaud","M",31555,1309,11078,.,120412
120415,"FR","Orion France","Sales Management","Sales Management","Sales Management","Senior Sales Manager","Alain-Patrick Da Cunha","M",91580,6621,16345,.,120412
120674,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Shipping Manager","Corinne Bourreau","F",62685,-2419,6575,.,120659
120675,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Shipping Agent II","Xavier Kergoat","M",36600,11735,18383,.,120674
120676,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Shipping Agent I","Jean Marc Bouteille","M",31690,6809,14915,.,120674
120699,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Shipping Manager","Pierre Dezafit","M",48565,8119,15706,.,120659
120700,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Shipping Agent II","Farida Hamon","F",30290,-2213,6575,.,120699
120701,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Shipping Agent II","Nadege Michel","F",32545,10485,17226,.,120699
120702,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Shipping Agent I","Damien Simon","M",25730,6688,16741,.,120699
120703,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Warehouse Assistant I","Corinne Barens","F",26790,-4075,6575,.,120699
120704,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Warehouse Assistant I","Claude Millequant","M",27185,6661,14945,.,120699
120705,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Warehouse Assistant II","Rodolphe Auge","M",26190,4851,14701,.,120699
120706,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Warehouse Assistant I","Jean-Pail Lagier","M",25295,6726,15826,.,120699
120707,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Warehouse Assistant IV","Christine Rustenholz","F",30460,8659,16192,.,120699
120708,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Warehouse Assistant I","Isabelle Spira","F",25825,3125,11139,.,120699
120709,"FR","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping EMEA","Warehouse Assistant II","Remy Thomet","M",27205,11746,18322,.,120699
120883,"GB","Orion UK","Administration","Administration","Administration","Office Assistant I","David Liveing","M",26090,8449,17623,18170,120887
120884,"GB","Orion UK","Administration","Administration","Administration","Office Assistant I","David Geoghegan","M",27205,8630,17714,.,120887
120885,"GB","Orion UK","Administration","Administration","Administration","Office Assistant IV","Robin Donaldson","M",32240,-536,6575,.,120887
120886,"GB","Orion UK","Administration","Administration","Shipping Charges","Clerk I","Rhiannedd Earshaw","M",26205,10258,18383,.,120887
120887,"GB","Orion UK","Administration","Administration","Shipping Charges","Administration Manager","Jurgen Jenkins","M",45500,6595,16618,.,120988
120888,"GB","Orion UK","Administration","Goods Entrance","Stock Admin","Warehouse Manager","Donnie Raabe","M",43560,4970,15157,.,120887
120889,"GB","Orion UK","Administration","Goods Entrance","Stock Admin","Warehouse Assistant I","Robert Bissett","M",25765,-2549,6575,.,120888
120890,"GB","Orion UK","Administration","Security","Security Guards","Security Manager","Sheridan Flaye","M",32520,11156,18414,.,120887
120891,"GB","Orion UK","Administration","Security","Security Guards","Security Guard I","Fay Hurley","F",26335,11712,18383,.,120890
120892,"GB","Orion UK","Administration","Security","Security Guards","Security Guard II","Sue Furihata","F",26780,1301,11382,.,120890
120893,"GB","Orion UK","Administration","Service Center","Service","Service Assistant I","Azzeddine Clift","M",27170,10293,18659,.,120890
120894,"GB","Orion UK","Administration","Service Center","Service","Service Assistant I","Margaret Plaisted","F",26910,-604,7791,18201,120890
120895,"GB","Orion UK","Administration","Service Center","Service","Service Assistant III","Beverley Olney","F",31060,1186,7944,.,120890
120896,"GB","Orion UK","Administration","Service Center","Service","Service Assistant II","Joanne Branter","F",27465,-4356,6575,.,120890
120897,"GB","Orion UK","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker IV","Magalie Corbett","F",42530,1417,9466,.,120887
120898,"GB","Orion UK","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker I","Patricia Parker","F",26740,-4269,6575,.,120887
120899,"GB","Orion UK","Engineering","Engineering","Electrical Workshop","Electrician III","Pauline Lockton","F",28345,4756,15066,.,120887
120900,"GB","Orion UK","Engineering","Engineering","Electrical Workshop","Electrician I","Hilary Whetton","F",26645,1230,12023,.,120887
120901,"GB","Orion UK","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Flavia Killean","F",26560,-630,10135,.,120989
120902,"GB","Orion UK","Sales","Sales","Assorted Sports Articles","Sales Rep. I","James W Wiedmann","M",25830,11316,18444,.,120989
120903,"GB","Orion UK","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Shelley Mcivor","F",30425,-698,8126,.,120989
120904,"GB","Orion UK","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Suella Crag","F",25480,-2207,8432,.,120989
120905,"GB","Orion UK","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Andrew Norman","M",26415,-450,8432,.,120989
120906,"GB","Orion UK","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Mike Mutyora","M",25055,-4257,6575,.,120989
120907,"GB","Orion UK","Sales","Sales","Children Sports","Sales Rep. II","Andrew Whales","M",28000,3122,11017,.,120989
120908,"GB","Orion UK","Sales","Sales","Children Sports","Sales Rep. IV","Shalini Deas","F",31615,6799,17379,.,120989
120909,"GB","Orion UK","Sales","Sales","Children Sports","Sales Rep. III","Reshna Doole","F",29045,11207,17563,18110,120989
120910,"GB","Orion UK","Sales","Sales","Children Sports","Sales Rep. III","Nicola Mooney","F",28435,-379,6909,.,120989
120911,"GB","Orion UK","Sales","Sales","Children Sports","Sales Rep. II","Maeve Wardle","F",27600,8487,16496,18321,120989
120912,"GB","Orion UK","Sales","Sales","Children Sports","Sales Rep. IV","Ruth Ribbons","F",31105,4984,14092,.,120989
120913,"GB","Orion UK","Sales","Sales","Children Sports","Sales Rep. I","Pearl Jones","F",26575,5060,12478,.,120989
120914,"GB","Orion UK","Sales","Sales","Clothes","Sales Rep. III","Gary Jerrard","M",29920,10289,18444,18628,120989
120915,"GB","Orion UK","Sales","Sales","Clothes","Sales Rep. III","Howard Pearson","M",28330,6825,15887,.,120989
120916,"GB","Orion UK","Sales","Sales","Clothes","Sales Rep. I","Ross Flint","F",26495,11190,18383,18535,120989
120917,"GB","Orion UK","Sales","Sales","Clothes","Sales Rep. II","Patricia Cutri","F",26765,6800,14061,.,120989
120918,"GB","Orion UK","Sales","Sales","Clothes","Sales Rep. II","Steve Speel","M",27630,3142,10652,.,120989
120919,"GB","Orion UK","Sales","Sales","Clothes","Sales Rep. I","Christopher Dennison","M",26540,10409,18414,.,120989
120920,"GB","Orion UK","Sales","Sales","Golf","Sales Rep. I","Mungo Laing","M",25515,10526,17592,.,120989
120921,"GB","Orion UK","Sales","Sales","Golf","Sales Rep. III","Jackie Burnie","F",28150,3257,12174,17836,120989
120922,"GB","Orion UK","Sales","Sales","Golf","Sales Rep. II","Joanne Naito","F",28130,2928,13666,.,120989
120923,"GB","Orion UK","Sales","Sales","Golf","Sales Rep. II","Mark Rymer","M",28145,-2542,6575,.,120989
120924,"GB","Orion UK","Sales","Sales","Golf","Sales Rep. III","Manoj Manville","M",29370,10333,18628,.,120989
120925,"GB","Orion UK","Sales","Sales","Golf","Sales Rep. I","James W Narayan","M",27465,1145,9466,.,120989
120926,"GB","Orion UK","Sales","Sales","Golf","Sales Rep. III","Guy Gourley","M",29435,1421,9344,.,120989
120927,"GB","Orion UK","Sales","Sales","Indoor Sports","Sales Rep. I","Nicolette Kuner","F",27830,3127,12085,18443,120989
120928,"GB","Orion UK","Sales","Sales","Indoor Sports","Sales Rep. I","Stuart Cohen","M",26700,11033,18444,.,120989
120929,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. III","Lynne M Merga","F",29520,-2499,6575,17531,120989
120930,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. II","Trak Durston","F",27420,1443,12174,17378,120989
120931,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. I","Andy Forissier","M",26660,-2206,7396,17836,120989
120932,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. II","Richard Estachy","M",28165,3236,10774,.,120989
120933,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. II","Allene Chance","F",26875,-2209,7030,.,120989
120934,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. I","Kalpana Sweeny","F",27460,1238,8797,18535,120989
120935,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. I","Sue Walduck","F",26385,-448,8401,.,120989
120936,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. III","Gordon Johnson Mbe","M",28580,-2355,7822,.,120989
120937,"GB","Orion UK","Sales","Sales","Shoes","Sales Rep. I","Aqul Redfern","M",25410,12034,18628,.,120989
120938,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. I","Pearl Neill","F",26265,8417,18475,18659,120991
120939,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. II","Paul Wallace","M",27595,6621,13939,.,120991
120940,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. I","Andy Hughes","M",26530,10335,17318,17867,120991
120941,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. I","Nick Narayan","M",26125,1145,8401,18078,120991
120942,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. III","Andrew Quarendon","M",29195,-4174,6575,18413,120991
120943,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. IV","Debora Hobjen","F",30650,4808,12874,.,120991
120944,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. I","Marcus Randle","F",26610,-2334,6575,.,120991
120945,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. I","Claudine Lloyd-Barnes","F",25405,3033,13696,.,120991
120946,"GB","Orion UK","Sales","Sales","Outdoors","Sales Rep. I","Tim Clarke","M",26680,6881,13819,18078,120991
120947,"GB","Orion UK","Sales","Sales","Racket Sports","Sales Rep. III","Jodie Angelo","F",30770,11769,18567,.,120989
120948,"GB","Orion UK","Sales","Sales","Racket Sports","Sales Rep. III","Winyard Caplin","M",29640,-4300,6634,17775,120989
120949,"GB","Orion UK","Sales","Sales","Racket Sports","Sales Rep. III","Tomohiro Howatt","M",30410,-4381,6575,.,120989
120950,"GB","Orion UK","Sales","Sales","Racket Sports","Sales Rep. II","Franklin Steedman","M",26800,10352,18079,18263,120989
120951,"GB","Orion UK","Sales","Sales","Racket Sports","Sales Rep. I","Sarah Shamker","F",27010,-4329,6575,.,120989
120952,"GB","Orion UK","Sales","Sales","Running - Jogging","Sales Rep. III","Peter Brettell","M",28200,-4106,6575,.,120989
120953,"GB","Orion UK","Sales","Sales","Running - Jogging","Sales Rep. I","Dana Read","M",25705,1326,9071,.,120989
120954,"GB","Orion UK","Sales","Sales","Running - Jogging","Sales Rep. I","Jonathan Truman","M",26895,8713,18444,.,120989
120955,"GB","Orion UK","Sales","Sales","Running - Jogging","Sales Rep. II","Robert de la Mer","M",28430,8556,18383,.,120989
120956,"GB","Orion UK","Sales","Sales","Running - Jogging","Sales Rep. I","Steve Beaham","M",26780,4907,12054,17347,120989
120957,"GB","Orion UK","Sales","Sales","Running - Jogging","Sales Rep. IV","Hebi Price","M",31080,11050,18383,.,120989
120958,"GB","Orion UK","Sales","Sales","Running - Jogging","Sales Rep. III","David Lugger","M",29670,6700,15007,.,120989
120959,"GB","Orion UK","Sales","Sales","Swim Sports","Sales Rep. I","David Morgan","M",27175,10413,17653,.,120989
120960,"GB","Orion UK","Sales","Sales","Swim Sports","Sales Rep. IV","Biddy Chalisey","F",30615,4770,12327,.,120989
120961,"GB","Orion UK","Sales","Sales","Swim Sports","Sales Rep. II","John Holding","M",27785,12049,18597,.,120989
120962,"GB","Orion UK","Sales","Sales","Swim Sports","Sales Rep. II","Alison Bailey","F",27960,12029,18322,.,120989
120963,"GB","Orion UK","Sales","Sales","Swim Sports","Sales Rep. II","Teresa Celebi","F",26130,5006,12784,.,120989
120964,"GB","Orion UK","Sales","Sales","Swim Sports","Sales Rep. IV","Shelagh Mitchumm","F",32165,10269,17287,18109,120989
120965,"GB","Orion UK","Sales","Sales","Team Sports","Sales Rep. II","Kasha Byrne","F",26930,3196,13362,.,120989
120966,"GB","Orion UK","Sales","Sales","Team Sports","Sales Rep. I","Sally-Faye Koldynski","F",25615,2941,13758,.,120989
120967,"GB","Orion UK","Sales","Sales","Team Sports","Sales Rep. IV","Jane Wallis","F",32745,11162,18536,.,120989
120968,"GB","Orion UK","Sales","Sales","Team Sports","Sales Rep. IV","Pauline Nasreen","F",32475,1416,11292,.,120989
120969,"GB","Orion UK","Sales","Sales","Team Sports","Sales Rep. II","David Whitty","M",27020,6581,14396,.,120989
120970,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Edward Kershi","F",25870,6692,18597,18627,120991
120971,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Jane Chong","F",26610,5015,18597,18658,120991
120972,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Alan Trouse","M",26640,6580,18597,18717,120991
120973,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Raymond Bullman","M",26175,11861,18597,18747,120991
120974,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Fiona Shadbolt","F",27085,-583,18597,18717,120991
120975,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Malcolm F Quenzel","M",27180,-4286,18597,18778,120991
120976,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Genevieve Donoghue","F",27110,-2390,18597,18686,120991
120977,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Rob Wood","M",26890,-607,18597,18686,120991
120978,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Gareth Kara","M",25420,-4122,18597,18747,120991
120979,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Sanaya Bag","F",25725,3065,18597,18686,120991
120980,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Steve Anderson","M",25910,6768,18597,18747,120991
120981,"GB","Orion UK","Sales","Sales","Temporary","Temp. Sales Rep.","Moria Barnes","F",27310,11696,18597,18808,120991
120982,"GB","Orion UK","Sales","Sales","Trainees","Trainee","Sylvia Screeton","F",25870,6930,17167,17347,120991
120983,"GB","Orion UK","Sales","Sales","Trainees","Trainee","Grif Morton","M",24375,8587,17167,17347,120991
120984,"GB","Orion UK","Sales","Sales","Winter Sports","Sales Rep. IV","Debbie Taylor","F",30380,-4259,6575,17622,120991
120985,"GB","Orion UK","Sales","Sales","Winter Sports","Sales Rep. III","David Dann","M",30410,-2522,7730,18140,120991
120986,"GB","Orion UK","Sales","Sales","Winter Sports","Sales Rep. I","Alastair Watson","M",27260,4955,11688,17683,120991
120987,"GB","Orion UK","Sales","Sales","Winter Sports","Sales Rep. IV","Bert Mulvihill","M",32775,11768,18322,.,120991
120988,"GB","Orion UK","Sales Management","Sales Management","Sales Management","Director","Phillip Sanctuary","M",161295,1386,10409,.,120261
120989,"GB","Orion UK","Sales Management","Sales Management","Sales Management","Senior Sales Manager","Byron Baker","M",92105,-370,7487,.,120988
120990,"GB","Orion UK","Sales Management","Sales Management","Sales Management","Secretary II","Charles Brody","M",28885,1383,11809,.,120988
120991,"GB","Orion UK","Sales Management","Sales Management","Sales Management","Sales Manager","Sajeel Withe","M",81510,6767,13970,.,120988
120579,"IT","Orion Italy","Administration","Administration","Administration","Office Assistant I","Ferruccio Delfini","M",25120,1419,8401,.,120581
120580,"IT","Orion Italy","Administration","Administration","Administration","Office Assistant I","Antonella Della Scala","F",27055,8494,18444,.,120581
120581,"IT","Orion Italy","Administration","Administration","Shipping Charges","Administration Manager","Silvia Indiani","F",43720,10240,16953,.,120653
120582,"IT","Orion Italy","Administration","Goods Entrance","Stock Admin","Warehouse Manager","Luca Cordero Saieva","M",42875,-632,6575,.,120581
120583,"IT","Orion Italy","Administration","Goods Entrance","Stock Admin","Warehouse Assistant II","Marcello Pistorello","M",26080,4902,14792,.,120582
120584,"IT","Orion Italy","Administration","Security","Security Guards","Security Manager","Daniela Marcoaldi","F",32355,-2351,6575,.,120581
120585,"IT","Orion Italy","Administration","Security","Security Guards","Security Guard II","Evelina Rivoli","F",28035,10227,18353,.,120584
120586,"IT","Orion Italy","Administration","Security","Security Guards","Security Guard I","Grazia Querci","F",27180,-644,6999,.,120584
120587,"IT","Orion Italy","Administration","Service Center","Service","Service Assistant I","Giovanni Battista Forestieri","M",27220,-2447,6756,.,120584
120588,"IT","Orion Italy","Administration","Service Center","Service","Service Assistant II","Andrea Pierse","M",28995,11723,18444,.,120584
120589,"IT","Orion Italy","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker II","Luigi Branda","M",28725,11734,18536,.,120581
120590,"IT","Orion Italy","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker III","Eleonora Bizai","F",32800,10333,18567,.,120581
120591,"IT","Orion Italy","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Jose' Luis Cacciapaglia","M",26275,11044,18475,.,120654
120592,"IT","Orion Italy","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Leo Aldo Benetollo","M",26945,10265,18353,.,120654
120593,"IT","Orion Italy","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Silvana Riggio","F",29500,-2324,6575,.,120654
120594,"IT","Orion Italy","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Francesco Cioni","M",28735,10254,18444,.,120654
120595,"IT","Orion Italy","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Fabia Dini","F",26190,10532,18353,.,120654
120596,"IT","Orion Italy","Sales","Sales","Children Sports","Sales Rep. II","Laura Cornaglia","F",28435,11312,18475,.,120654
120597,"IT","Orion Italy","Sales","Sales","Children Sports","Sales Rep. I","Renato Tacchini","M",25940,10283,18353,.,120654
120598,"IT","Orion Italy","Sales","Sales","Children Sports","Sales Rep. III","Mariateresa Davies","F",30210,11112,18322,.,120654
120599,"IT","Orion Italy","Sales","Sales","Children Sports","Sales Rep. III","Giulia Buonocunto","F",29555,-4085,6575,18505,120654
120600,"IT","Orion Italy","Sales","Sales","Children Sports","Sales Rep. I","Germano de Grossi","M",29805,1229,8126,.,120654
120601,"IT","Orion Italy","Sales","Sales","Clothes","Sales Rep. II","Paolo Mestitz","M",28580,-4084,6575,17317,120654
120602,"IT","Orion Italy","Sales","Sales","Clothes","Sales Rep. I","Maria Ruscello","F",25940,1296,8857,.,120654
120603,"IT","Orion Italy","Sales","Sales","Clothes","Sales Rep. II","Nicoletta Bandella","M",26425,-514,9466,.,120654
120604,"IT","Orion Italy","Sales","Sales","Clothes","Sales Rep. III","Esther Bolchini","F",30525,5110,14061,.,120654
120605,"IT","Orion Italy","Sales","Sales","Clothes","Sales Rep. I","Rosella Redigolo","F",27135,-2395,6575,18352,120654
120606,"IT","Orion Italy","Sales","Sales","Golf","Sales Rep. III","Pina Cellamare","F",30040,1315,10043,.,120654
120607,"IT","Orion Italy","Sales","Sales","Golf","Sales Rep. IV","Vittorio Minihan","M",30655,1333,10562,17775,120654
120608,"IT","Orion Italy","Sales","Sales","Golf","Sales Rep. III","Giuseppe Franco Scoditti","M",30460,8720,16588,17562,120654
120609,"IT","Orion Italy","Sales","Sales","Golf","Sales Rep. I","Sabrina Corradetti","F",26890,11698,18322,.,120654
120610,"IT","Orion Italy","Sales","Sales","Golf","Sales Rep. II","Agata Blundo","F",26900,6649,17379,.,120654
120611,"IT","Orion Italy","Sales","Sales","Indoor Sports","Sales Rep. II","Giovanni Nitti","M",26590,11756,18383,.,120654
120612,"IT","Orion Italy","Sales","Sales","Indoor Sports","Sales Rep. I","Dominique Bajetti","M",26220,12037,18628,.,120654
120613,"IT","Orion Italy","Sales","Sales","Shoes","Sales Rep. II","Claudio Pertotti","M",28415,-4241,6575,18535,120654
120614,"IT","Orion Italy","Sales","Sales","Shoes","Sales Rep. I","Elena Orlandini","F",26735,4853,13939,18321,120654
120615,"IT","Orion Italy","Sales","Sales","Shoes","Sales Rep. III","Pierluigi Diversi","M",29235,1225,11779,.,120654
120616,"IT","Orion Italy","Sales","Sales","Shoes","Sales Rep. I","Gianpaolo Bonasso","M",26765,8405,18536,.,120654
120617,"IT","Orion Italy","Sales","Sales","Shoes","Sales Rep. I","Timothy-Lucie Ferracin","M",25655,3206,10501,17928,120654
120618,"IT","Orion Italy","Sales","Sales","Shoes","Sales Rep. II","Nilla Patrizia Alquati","F",28075,-2534,7671,.,120654
120619,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. I","Eugenio Bottazzo","M",26105,-388,6575,.,120654
120620,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. III","Giuseppe Dezzani","M",29445,1169,8005,.,120654
120621,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. I","Piera Bvenigni","F",25895,-456,9831,.,120654
120622,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. I","Gianluca Lo Bianco","M",26530,2923,10744,17256,120654
120623,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. I","Patrizia Moraschini","F",27095,3176,11993,.,120654
120624,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. II","Umberto Salvagnin","M",27155,10386,18506,.,120654
120625,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. IV","Caterina Seghi","F",32015,10401,18567,.,120654
120626,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. I","Odetta Sias","F",21660,1329,8248,.,120654
120627,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. IV","Maurizio Modeo","M",32355,11192,18383,.,120654
120628,"IT","Orion Italy","Sales","Sales","Outdoors","Sales Rep. I","Maria Paola Borzini","F",26815,11732,18659,.,120654
120629,"IT","Orion Italy","Sales","Sales","Racket Sports","Sales Rep. I","Stefano Orabona","M",26035,10418,17867,.,120654
120630,"IT","Orion Italy","Sales","Sales","Racket Sports","Sales Rep. IV","Francesco Malknecht","M",30150,4970,12815,.,120654
120631,"IT","Orion Italy","Sales","Sales","Racket Sports","Sales Rep. I","Bertilla Brambillasca","F",25475,-4187,6575,.,120654
120632,"IT","Orion Italy","Sales","Sales","Racket Sports","Sales Rep. I","Giovanni Di Lernia","M",26150,11164,18444,18628,120654
120633,"IT","Orion Italy","Sales","Sales","Running - Jogging","Sales Rep. III","Luciano Laudani","M",30320,-4145,6575,.,120654
120634,"IT","Orion Italy","Sales","Sales","Running - Jogging","Sales Rep. III","Aprognano Lea","M",28115,3023,12450,.,120654
120635,"IT","Orion Italy","Sales","Sales","Swim Sports","Sales Rep. I","Cristina de Gisi","F",27055,6771,15949,.,120654
120636,"IT","Orion Italy","Sales","Sales","Swim Sports","Sales Rep. I","Alessandro Di Lernia","M",26525,11164,18659,18840,120654
120637,"IT","Orion Italy","Sales","Sales","Swim Sports","Sales Rep. I","Maurizio d'Antona","M",25900,11302,18353,.,120654
120638,"IT","Orion Italy","Sales","Sales","Team Sports","Sales Rep. III","Silvio Granzini","M",28985,11841,18628,.,120654
120639,"IT","Orion Italy","Sales","Sales","Team Sports","Sales Rep. III","Marcella Gattico","F",28430,5070,12662,.,120654
120640,"IT","Orion Italy","Sales","Sales","Team Sports","Sales Rep. II","Edoardo Capocasale","M",28040,-4047,6575,.,120654
120641,"IT","Orion Italy","Sales","Sales","Temporary","Temp. Sales Rep.","Roberto Zaffaroni","M",26165,-2538,18597,18717,120654
120642,"IT","Orion Italy","Sales","Sales","Temporary","Temp. Sales Rep.","Alberto Andrea Kali","M",25275,8717,18597,18627,120654
120643,"IT","Orion Italy","Sales","Sales","Temporary","Temp. Sales Rep.","Jose' Luis Ingravalle","M",25640,1345,18597,18778,120654
120644,"IT","Orion Italy","Sales","Sales","Temporary","Temp. Sales Rep.","Paola Calcinati","F",26330,-616,18597,18627,120654
120645,"IT","Orion Italy","Sales","Sales","Temporary","Temp. Sales Rep.","Daniela Luisa Notargiacomo","F",26405,8535,18597,18747,120654
120646,"IT","Orion Italy","Sales","Sales","Temporary","Temp. Sales Rep.","Ante Bernardis","M",26720,3230,18597,18717,120654
120647,"IT","Orion Italy","Sales","Sales","Temporary","Temp. Sales Rep.","Cinzia Dalla Grisa","M",25470,-509,18597,18658,120654
120648,"IT","Orion Italy","Sales","Sales","Trainees","Trainee","Fabio Cantiani","M",25555,8451,17167,17347,120654
120649,"IT","Orion Italy","Sales","Sales","Trainees","Trainee","Antonella Carissimi","F",21615,2976,17167,17347,120654
120650,"IT","Orion Italy","Sales","Sales","Winter Sports","Sales Rep. II","Antonietta Cardellini","F",26020,-4087,6575,.,120654
120651,"IT","Orion Italy","Sales","Sales","Winter Sports","Sales Rep. I","Brunner Nossa","F",27055,8609,16527,.,120654
120652,"IT","Orion Italy","Sales","Sales","Winter Sports","Sales Rep. II","Giuseppe Giubbolini","M",26675,11739,18567,.,120654
120653,"IT","Orion Italy","Sales Management","Sales Management","Sales Management","Director","Bruno Bruzzi","M",163125,3129,10897,.,120261
120654,"IT","Orion Italy","Sales Management","Sales Management","Sales Management","Sales Manager","Francesca Crescenzio","F",80470,8049,16376,.,120653
120655,"IT","Orion Italy","Sales Management","Sales Management","Sales Management","Secretary II","Andreana Comacchio","F",27975,8719,16040,.,120653
120514,"NL","Orion Holland","Administration","Administration","Administration","Office Assistant II","J.A.J. Slomp","M",28170,-4364,6575,.,120516
120515,"NL","Orion Holland","Administration","Administration","Administration","Office Assistant III","M.A.R. Wiersema","M",30140,8629,17471,.,120516
120516,"NL","Orion Holland","Administration","Administration","Shipping Charges","Administration Manager","Veronique Konings","F",43620,10261,17837,.,120576
120517,"NL","Orion Holland","Administration","Goods Entrance","Stock Admin","Warehouse Manager","K.T.l Ligtvoet","F",41965,7540,16192,.,120516
120518,"NL","Orion Holland","Administration","Goods Entrance","Stock Admin","Warehouse Assistant I","G.J.E. Van Wattingen","M",26440,1233,11627,.,120517
120519,"NL","Orion Holland","Administration","Security","Security Guards","Security Manager","Tine Pijpers","F",32195,8622,17045,.,120516
120520,"NL","Orion Holland","Administration","Security","Security Guards","Security Guard I","M.E. Siepman","F",25820,4808,13362,.,120519
120521,"NL","Orion Holland","Administration","Service Center","Service","Service Assistant II","T.M.C. Verweij","F",34865,11773,18322,.,120519
120522,"NL","Orion Holland","Administration","Service Center","Service","Service Assistant I","J.A. Ruiter","F",27420,8448,15765,.,120519
120523,"NL","Orion Holland","Engineering","Engineering","Cabinet Maker's Workshop","Cabinet Maker II","H.G. Piet","M",28925,2940,12327,.,120516
120524,"NL","Orion Holland","Engineering","Engineering","Electrical Workshop","Electrician II","Anita Buursema Nri","F",27060,10535,17745,.,120516
120525,"NL","Orion Holland","Sales","Sales","Assorted Sports Articles","Sales Rep. II","H.C. Gobel","F",28120,11880,17380,.,120577
120526,"NL","Orion Holland","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Gerard Blanken","M",27640,4924,11596,.,120577
120527,"NL","Orion Holland","Sales","Sales","Assorted Sports Articles","Sales Rep. III","Jan-Reijer Rutten","F",30135,3252,10409,.,120577
120528,"NL","Orion Holland","Sales","Sales","Children Sports","Sales Rep. II","J.C. Benard","F",27785,-4132,6575,17409,120577
120529,"NL","Orion Holland","Sales","Sales","Children Sports","Sales Rep. I","J.C. Kelder","F",27030,-2264,6665,.,120577
120530,"NL","Orion Holland","Sales","Sales","Children Sports","Sales Rep. I","A.M. Van Veen","F",25340,11281,16781,.,120577
120531,"NL","Orion Holland","Sales","Sales","Clothes","Sales Rep. IV","F.A.H. Zwikker","M",31920,4842,15007,.,120577
120532,"NL","Orion Holland","Sales","Sales","Clothes","Sales Rep. II","A.G. Elsenga","M",26090,8599,17106,.,120577
120533,"NL","Orion Holland","Sales","Sales","Clothes","Sales Rep. III","C.M. Caspers","F",37320,-4123,6575,17652,120577
120534,"NL","Orion Holland","Sales","Sales","Golf","Sales Rep. II","A.J.M. Talsma","M",26350,11998,18536,.,120577
120535,"NL","Orion Holland","Sales","Sales","Golf","Sales Rep. I","T.A.F.A. Trockenbrodt","F",26455,-604,9862,.,120577
120536,"NL","Orion Holland","Sales","Sales","Indoor Sports","Sales Rep. III","Anne Marie Heijne","F",30280,-4213,6575,17317,120577
120537,"NL","Orion Holland","Sales","Sales","Shoes","Sales Rep. III","l.J. Oberman","M",29860,6794,16437,.,120577
120538,"NL","Orion Holland","Sales","Sales","Shoes","Sales Rep. III","B.T. Van Der Cruyssen","F",28615,-4131,6575,.,120577
120539,"NL","Orion Holland","Sales","Sales","Shoes","Sales Rep. II","Sabine Versteegh","F",28510,5032,14031,17197,120577
120540,"NL","Orion Holland","Sales","Sales","Outdoors","Sales Rep. I","K.S. Wakker","M",26585,-2554,6575,.,120577
120541,"NL","Orion Holland","Sales","Sales","Outdoors","Sales Rep. III","d.K. Hoen","M",30260,3116,11596,.,120577
120542,"NL","Orion Holland","Sales","Sales","Outdoors","Sales Rep. I","Tine Van Der Werk","F",27410,11767,18322,.,120577
120543,"NL","Orion Holland","Sales","Sales","Outdoors","Sales Rep. I","N.U. Gülcher","M",26980,-4342,6575,17531,120577
120544,"NL","Orion Holland","Sales","Sales","Outdoors","Sales Rep. I","P.J.M. Koekkoek","M",33925,12044,17745,.,120577
120545,"NL","Orion Holland","Sales","Sales","Outdoors","Sales Rep. I","H.F.R. Bottema","F",30460,6833,15706,17652,120577
120546,"NL","Orion Holland","Sales","Sales","Outdoors","Sales Rep. III","A.J. Schmitz du Moulin","M",28955,10536,17714,.,120577
120547,"NL","Orion Holland","Sales","Sales","Racket Sports","Sales Rep. I","F.M. Yspeert","M",27125,3070,13727,.,120577
120548,"NL","Orion Holland","Sales","Sales","Racket Sports","Sales Rep. I","J.T. Van Der Weg","F",25050,11770,18475,.,120577
120549,"NL","Orion Holland","Sales","Sales","Racket Sports","Sales Rep. I","H.F.R. Jansen","F",26180,1267,10744,17439,120577
120550,"NL","Orion Holland","Sales","Sales","Racket Sports","Sales Rep. I","B.N.B. Peter","F",26090,11993,18322,.,120577
120551,"NL","Orion Holland","Sales","Sales","Racket Sports","Sales Rep. I","Paul Kuipers","M",25110,8477,16284,.,120577
120552,"NL","Orion Holland","Sales","Sales","Running - Jogging","Sales Rep. II","P.A.B.M. Eger","M",27430,11769,18536,.,120577
120553,"NL","Orion Holland","Sales","Sales","Running - Jogging","Sales Rep. I","J.l. Tasche","M",20835,-679,9010,.,120577
120554,"NL","Orion Holland","Sales","Sales","Running - Jogging","Sales Rep. II","C.H.W.M. Scholten","M",26560,-2305,8644,.,120577
120555,"NL","Orion Holland","Sales","Sales","Running - Jogging","Sales Rep. III","J.W. Pot","M",29360,8717,17501,.,120577
120556,"NL","Orion Holland","Sales","Sales","Running - Jogging","Sales Rep. I","A R J Lepikko","M",26080,1289,11962,.,120577
120557,"NL","Orion Holland","Sales","Sales","Swim Sports","Sales Rep. I","A.G. Andel","M",26915,3262,10897,17225,120577
120558,"NL","Orion Holland","Sales","Sales","Swim Sports","Sales Rep. I","J.B.M.M. Van Noordennen","M",25410,8518,17957,.,120577
120559,"NL","Orion Holland","Sales","Sales","Swim Sports","Sales Rep. II","B.W.V. Van Oordt","F",27150,-4219,6575,.,120577
120560,"NL","Orion Holland","Sales","Sales","Swim Sports","Sales Rep. III","R.A.P. Van Raalte","M",29995,11313,18414,.,120577
120561,"NL","Orion Holland","Sales","Sales","Team Sports","Sales Rep. I","Friedrich Mens","M",25515,6768,15522,.,120577
120562,"NL","Orion Holland","Sales","Sales","Team Sports","Sales Rep. I","J.A.E. Looije","F",26525,12003,17684,17928,120577
120563,"NL","Orion Holland","Sales","Sales","Team Sports","Sales Rep. III","A.A. Icario","M",29920,6656,15492,.,120577
120564,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","R.M.d. Van Den Heuvel","F",27465,4874,18597,18627,120577
120565,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","F.R.E. Van Den Nobelen","M",26075,4970,18597,18778,120577
120566,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","C.G.V.M. Van Der Lingen","M",27490,11760,18597,18808,120577
120567,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","F.N. Beukers","M",25820,11705,18597,18808,120577
120568,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","J.C. Traas","F",26305,4787,18597,18808,120577
120569,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","I.H.H.M. Pijpers","F",27265,2974,18597,18717,120577
120570,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","Friedrich Wuck","M",27380,-4363,18597,18686,120577
120571,"NL","Orion Holland","Sales","Sales","Temporary","Temp. Sales Rep.","M.M.J. Bossink","F",26495,-2497,18597,18747,120577
120572,"NL","Orion Holland","Sales","Sales","Trainees","Trainee","I.H.H.M. Prins","F",25225,1194,17167,17347,120577
120573,"NL","Orion Holland","Sales","Sales","Winter Sports","Sales Rep. III","Tom Vaessen","M",29275,-394,7213,.,120577
120574,"NL","Orion Holland","Sales","Sales","Winter Sports","Sales Rep. I","H.l.M. Gunay","M",26840,4976,12388,.,120577
120575,"NL","Orion Holland","Sales","Sales","Winter Sports","Sales Rep. II","R.d. Kruize","M",26395,11315,18475,.,120577
120576,"NL","Orion Holland","Sales Management","Sales Management","Sales Management","Director","G.J. Oberman","M",151190,6794,15492,.,120261
120577,"NL","Orion Holland","Sales Management","Sales Management","Sales Management","Sales Manager","S.E.G. Konig","F",80890,6651,13696,.,120576
120578,"NL","Orion Holland","Sales Management","Sales Management","Sales Management","Secretary II","F.C.A.J. Van de Water","M",27640,10386,18475,.,120576
120259,"US","Board of Directors","Executives","Executives","Executives","Chief Executive Officer","Anthony Miller","M",433800,2946,12297,.,.
120260,"US","Board of Directors","Executives","Executives","Executives","Chief Marketing Officer","Christine Fletcher","F",207885,3258,10532,.,120259
120261,"US","Board of Directors","Executives","Executives","Executives","Chief Sales Officer","Harry Highpoint","M",243190,4800,11535,.,120259
120262,"US","Board of Directors","Executives","Executives","Executives","Chief Financial Officer","Max Crown","M",268455,5042,11932,.,120259
120263,"US","Board of Directors","Group Financials","Group Finance","Group Finance","Financial Analyst III","Bobby Cleverley","M",42605,2962,10135,17531,120262
120264,"US","Board of Directors","Group Financials","Group Finance","Group Finance","Financial Analyst II","Latonya Croome","F",37510,10249,18597,.,120262
120265,"US","Board of Directors","Group Financials","Group Finance","Group Finance","Auditor III","Wanda Branly","F",51950,-4106,6575,17166,120262
120266,"US","Board of Directors","Secretary of the Board","Secretary of the Board","Secretary","Secretary IV","Bao Krafve","F",31750,4930,12144,.,120259
120267,"US","Board of Directors","Secretary of the Board","Secretary of the Board","Secretary","Secretary III","Belanda Rink","F",28585,11110,17198,.,120259
120268,"US","Board of Directors","Strategy","Strategy","Strategy","Senior Strategist","Jacques Villeneuve","M",76105,6818,15096,.,120260
120269,"US","Board of Directors","Strategy","Strategy","Strategy","Strategist II","Shrimatee Kagolanu","F",52540,-4113,6575,17652,120260
120270,"US","Concession","Concession Management","Concession Management","Concession Management","Concession Director","Grezegorz Nuss","M",48435,-647,6575,.,120261
120271,"US","Concession","Concession Management","Concession Management","Concession Management","Concession Manager","Kenisha Winge","F",43635,3140,11201,.,120270
120272,"US","Concession","Concession Management","Concession Management","Eclipse","Concession Consultant II","Febin Flow","M",34390,-4309,6575,.,120271
120273,"US","Concession","Concession Management","Concession Management","Eclipse","Concession Assistant III","Doris Antonini","F",28455,11115,18322,.,120271
120274,"US","Concession","Concession Management","Concession Management","Eclipse","Concession Assistant I","Angela Landry","F",26840,2930,13849,.,120271
120275,"US","Concession","Concession Management","Concession Management","N.D. Gear","Concession Consultant II","Brandy Lattimer","F",32195,1456,10501,.,120271
120276,"US","Concession","Concession Management","Concession Management","N.D. Gear","Concession Assistant II","Nicholas Plybon","M",28090,-4033,6575,17317,120271
120277,"US","Concession","Concession Management","Concession Management","Tracker","Concession Consultant I","Wesley Shirts","F",32645,11916,17653,18048,120271
120278,"US","Concession","Concession Management","Concession Management","Tracker","Concession Assistant III","Binit Jongleux","M",27685,11308,18475,.,120271
120279,"US","Concession","Concession Management","International Concession","International Concession","Concession Consultant I","Kareema Dunlap","F",32925,5041,14731,.,120271
120280,"US","Concession","Concession Management","International Concession","International Concession","Concession Consultant III","Jaime Laurer","F",36930,3237,11809,16982,120271
120656,"US","Logistics","Logistics Management","Logistics","External","Logistics Coordinator II","Salley Amos","F",42570,6602,15765,.,120660
120657,"US","Logistics","Logistics Management","Logistics","External","Logistics Coordinator I","Theresa Weisbarth","F",36110,2928,12723,.,120660
120658,"US","Logistics","Logistics Management","Logistics","External","Logistics Coordinator II","Kenneth Kennedy","M",42485,-377,9163,.,120660
120659,"US","Logistics","Logistics Management","Logistics","Logistics","Director","Jay Havasy","M",161290,-2360,6575,.,120259
120660,"US","Logistics","Logistics Management","Logistics","Logistics","Logistics Manager","Robert Smith","M",61125,8192,17957,.,120659
120661,"US","Logistics","Logistics Management","Logistics","Logistics","Senior Logistics Manager","Cynthia Racine","F",85495,-400,10227,17347,120659
120662,"US","Logistics","Logistics Management","Logistics","Logistics","Secretary II","Lemonica Burroughs","M",27045,11864,18567,.,120659
120663,"US","Logistics","Logistics Management","Logistics","Pricing","Pricing Manager","Anglar Kornblith","F",56385,4833,15035,.,120659
120664,"US","Logistics","Logistics Management","Logistics","Pricing","Pricing Specialist","Brock Senchak","M",47605,-682,7060,.,120663
120665,"US","Logistics","Logistics Management","Secretariat","Import/Export","Senior Logistics Manager","Jill Leacock","F",80070,6871,16861,.,120659
120666,"US","Logistics","Logistics Management","Secretariat","Import/Export","Logistics Manager","John Onuscheck","M",64555,4921,13118,17652,120659
120667,"US","Logistics","Logistics Management","Secretariat","Import/Export","Office Assistant III","Edwin Droste","M",29980,8572,18294,.,120666
120668,"US","Logistics","Logistics Management","Secretariat","Office Services","Services Manager","Thyland Dolan","M",47785,-2261,8370,.,120659
120669,"US","Logistics","Logistics Management","Secretariat","Office Services","Services Assistant IV","Ronald Hill","M",36370,-4179,6575,.,120668
120670,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Shipping Manager","Odudu Zisek","M",65420,-4298,6575,17166,120659
120671,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Shipping Agent III","William Latty","M",40080,-584,9893,.,120670
120677,"US","Logistics","Stock & Shipping","Stock & Shipping","Export Stock","Shipping Manager","Suad Sochacki","F",65555,4993,13546,.,120659
120678,"US","Logistics","Stock & Shipping","Stock & Shipping","Export Stock","Shipping Agent III","Lucretta Octetree","F",40035,-2545,8156,17409,120677
120679,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Shipping Manager","Chrisy Cutucache","F",46190,7616,16983,.,120659
120680,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Shipping Agent I","Raymondria Desaulniers","F",27295,4985,12904,.,120679
120681,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Shipping Agent II","Elery Tolbet","M",30950,8624,17623,.,120679
120682,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Shipping Agent I","Barbara Kennedy","F",26760,5102,14701,.,120679
120683,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Shipping Agent III","Deven Kochneff","F",36315,-415,6575,17225,120679
120684,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Warehouse Assistant I","Suzon Woyach","F",26960,11287,18567,.,120679
120685,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Warehouse Assistant I","Anita Howard","F",25130,10287,18567,.,120679
120686,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Warehouse Assistant II","Berether Tucker","F",26690,-4256,6575,.,120679
120687,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Warehouse Assistant I","Freda Dannin","F",26800,8545,17745,17928,120679
120688,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Warehouse Assistant I","Lisa Carcaterra","F",25905,-2198,6575,17044,120679
120689,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Warehouse Assistant III","Katherine Pongor","F",27780,8601,18444,.,120679
120690,"US","Logistics","Stock & Shipping","Stock & Shipping","Stock & Shipping Americas","Warehouse Assistant I","Taronda Langston","F",25185,10243,17867,.,120679
120710,"US","Marketing","Marketing","CRM","CRM","Business Analyst II","Timothy Baltzell","M",54840,6902,15341,.,120719
120711,"US","Marketing","Marketing","CRM","CRM","Business Analyst III","Gloria Drew","F",59130,4896,13939,.,120719
120712,"US","Marketing","Marketing","DotCom & Catalog","Catalog","Marketing Manager","Elisabeth Motashaw","F",63640,-2394,6575,.,120719
120713,"US","Marketing","Marketing","DotCom & Catalog","Catalog","Marketing Assistant III","Carston Campbell","M",31630,-4330,6575,.,120712
120714,"US","Marketing","Marketing","DotCom & Catalog","DotCom","Marketing Manager","Robert Dinley","M",62625,7399,15584,.,120719
120715,"US","Marketing","Marketing","DotCom & Catalog","DotCom","Marketing Assistant II","Angelia Neal","F",28535,8563,17929,.,120714
120716,"US","Marketing","Marketing","Events & PR","Events & PR","Events Manager","Kenneth Juif","M",53015,6779,13727,.,120719
120717,"US","Marketing","Marketing","Events & PR","Events & PR","Marketing Assistant II","Jon Sleva","M",30155,-722,9344,.,120716
120718,"US","Marketing","Marketing","Events & PR","Events & PR","Marketing Assistant II","Charles Hennington","M",29190,3111,12539,.,120716
120719,"US","Marketing","Marketing","Marketing","Marketing","Senior Marketing Manager","Roya Ridley","F",87420,4770,14641,.,120260
120720,"US","Marketing","Marketing","Marketing","Marketing","Corp. Comm. Manager","John Spingola","M",46580,3049,13240,.,120719
120721,"US","Marketing","Marketing","Marketing","Marketing","Marketing Assistant II","Dlutomi Knust","F",29870,-4089,6575,.,120720
120722,"US","Marketing","Marketing","Marketing","Marketing","Corp. Comm. Specialist I","Ishmar Sheffield","M",32460,1360,10866,.,120720
120723,"US","Marketing","Marketing","Marketing","Marketing","Corp. Comm. Specialist II","Deanna Olsen","F",33950,-2335,6575,.,120720
120724,"US","Marketing","Marketing","Organization","Organization","Marketing Manager","Hampie Brown","M",63705,2948,13240,.,120719
120725,"US","Marketing","Marketing","Organization","Organization","Marketing Assistant II","Robert Whitlock","M",29970,8697,17684,17897,120724
120726,"US","Marketing","Marketing","Orion Club Member Service","Orion Club Member Service","Marketing Assistant I","Lutezenia Obermeyer","F",27380,11870,18506,.,120724
120727,"US","Marketing","Marketing","Orion Club Member Service","Orion Club Member Service","Marketing Assistant IV","Donald Marples","M",34925,3098,11109,.,120724
120728,"US","Purchasing","Purchasing","Children's Sports","Children's Sports","Purchasing Agent II","Kathryn Borge","F",35070,-393,9497,.,120735
120729,"US","Purchasing","Purchasing","Children's Sports","Children's Sports","Purchasing Agent I","Kimberly Howell","F",31495,11781,17281,18163,120735
120730,"US","Purchasing","Purchasing","Children's Sports","Children's Sports","Purchasing Agent I","Woodson Burt","M",30195,3272,11962,.,120735
120731,"US","Purchasing","Purchasing","Children's Sports","Children's Sports","Purchasing Agent II","Robert Lerew","M",34150,1169,10105,.,120735
120732,"US","Purchasing","Purchasing","Outdoors","Outdoors","Purchasing Agent III","Kent Uenking","M",35870,-2331,6575,.,120736
120733,"US","Purchasing","Purchasing","Outdoors","Outdoors","Purchasing Agent I","Michael Bezinque","M",31760,3015,12723,.,120736
120734,"US","Purchasing","Purchasing","Outdoors","Outdoors","Purchasing Agent III","Svein Saylor","M",34270,8516,18322,.,120736
120735,"US","Purchasing","Purchasing","Purchasing Management","Team Administration","Purchasing Manager","Brenda Bilobran","F",61985,-567,8156,.,120261
120736,"US","Purchasing","Purchasing","Purchasing Management","Team Administration","Purchasing Manager","Parie Kiemle","F",63985,3253,13057,.,120261
120737,"US","Purchasing","Purchasing","Purchasing Management","Team Administration","Purchasing Manager","Brenner Toner","F",63605,1182,11993,.,120261
120738,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent I","Huilun Swaiti","F",30025,-2370,6575,.,120737
120739,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent III","Bryon Cooper","M",36970,11176,18383,.,120737
120740,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent II","Lisa Koonce","F",35110,-2265,6575,17409,120737
120741,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent III","Keisha Court","F",36365,-4051,6575,.,120737
120742,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent I","Ronald Shewitz","M",31020,-4349,6575,.,120737
120743,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent II","Chimena Harrison","F",34620,4780,15127,.,120737
120744,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent II","Alden Feigenbaum","F",33490,11858,17714,18200,120737
120745,"US","Purchasing","Purchasing","Sports","Sports","Purchasing Agent I","Barbara Harvill","F",31365,11143,18414,.,120737
120746,"US","Shared Functions","Accounts","Accounts Center","Accounting & Budgeting","Account Manager","Kevie Kimmerle","M",46090,6857,16892,.,120262
120747,"US","Shared Functions","Accounts","Accounts Center","Accounting & Budgeting","Financial Controller I","Zashia Farthing","F",43590,6745,14457,.,120746
120748,"US","Shared Functions","Accounts","Accounts Center","Building Administration","Building Admin. Manager","Nahliah Post","F",48380,7491,17226,.,120262
120749,"US","Shared Functions","Accounts","Accounts Center","Building Administration","Office Assistant II","Kevin Niemann","M",26545,6837,14884,.,120748
120750,"US","Shared Functions","Accounts","Finance","Accounting & Budgeting","Accountant I","Connie Woods","F",32675,-573,8432,16832,120751
120751,"US","Shared Functions","Accounts","Finance","Accounting & Budgeting","Finance Manager","Azavi0us Mea","M",58200,3017,11901,.,120262
120752,"US","Shared Functions","Accounts","Finance","Accounting & Budgeting","Accountant I","Pieter Slykhuis","M",30590,-683,7152,17286,120751
120753,"US","Shared Functions","Accounts","Finance","Accounting & Budgeting","Financial Controller II","Ralph Ferrari","M",47000,7471,14092,.,120751
120754,"US","Shared Functions","Accounts","Finance","Concession Billing","Accountant II","John Atkins","M",34760,11841,18383,.,120751
120755,"US","Shared Functions","Accounts","Finance","Concession Billing","Accountant III","Elizabeth Thoits","F",36440,3158,10074,.,120751
120756,"US","Shared Functions","Accounts","Finance","Head Cashier","Financial Controller III","Wendy Asta","F",52295,6625,14792,.,120751
120757,"US","Shared Functions","Accounts","Finance","Head Cashier","Accountant III","Paul Knopfmacher","M",38545,-4306,6575,17713,120751
120758,"US","Shared Functions","Accounts","Finance","Head Cashier","Accountant II","Sal Voltz","M",34040,3217,13423,.,120751
120759,"US","Shared Functions","Accounts","Operations Accounting","Operations Accounting","Accountant II","Nishan Apr","M",36230,3230,9862,.,120746
120760,"US","Shared Functions","Accounts","Operations Accounting","Operations Accounting","Financial Controller III","Pamela Miller","F",53475,4754,13635,.,120746
120761,"US","Shared Functions","Accounts","Operations Accounting","Operations Accounting","Accountant I","Tameaka Akinfolarin","F",30960,11319,18444,.,120746
120762,"US","Shared Functions","Accounts","Operations Accounting","Operations Accounting","Accountant I","Marvin Leone","M",30625,8706,18322,.,120746
120763,"US","Shared Functions","Accounts Management","Auditing & Salary","Auditing & Wages","Auditor II","Ramond Capps","M",45100,-4084,6575,.,120766
120764,"US","Shared Functions","Accounts Management","Auditing & Salary","Auditing & Wages","Auditor I","Steven Worton","M",40450,6930,17136,.,120766
120765,"US","Shared Functions","Accounts Management","Auditing & Salary","Auditing & Wages","Financial Controller III","Nikeisha Kokoszka","F",51950,-380,6575,.,120766
120766,"US","Shared Functions","Accounts Management","Auditing & Salary","Auditing & Wages","Auditing Manager","Janelle Kempster","F",53400,6883,16496,.,120262
120767,"US","Shared Functions","Accounts Management","Auditing & Salary","Auditing & Wages","Accountant I","Legette Terricciano","M",32965,3051,11413,.,120766
120768,"US","Shared Functions","Accounts Management","Auditing & Salary","External Auditing","Accountant II","Roland Rayburn","M",44955,-528,9405,17500,120766
120769,"US","Shared Functions","Accounts Management","Auditing & Salary","External Auditing","Auditor II","Abelino Lightbourne","M",47990,6718,14701,.,120766
120770,"US","Shared Functions","Accounts Management","Auditing & Salary","Internal Auditing","Auditor I","Julia Pascoe","F",43930,3036,11413,17286,120766
120771,"US","Shared Functions","Accounts Management","Auditing & Salary","Internal Auditing","Accountant II","Wei  Xing Moore","F",36435,-515,7640,.,120766
120772,"US","Shared Functions","Group HR Management","Group HR","Group HR","HR Generalist I","Erich Overdorff","M",27365,11786,18475,.,120780
120773,"US","Shared Functions","Group HR Management","Group HR","Group HR","HR Generalist II","Entrisse Horne","F",27370,1148,9222,.,120780
120774,"US","Shared Functions","Group HR Management","Group HR","Group HR","HR Specialist II","Sue El-Amin","F",45155,8295,16861,18201,120780
120775,"US","Shared Functions","Group HR Management","Group HR","Group HR","HR Analyst II","Tanya Thompson","F",41580,4790,14915,.,120780
120776,"US","Shared Functions","Group HR Management","Group HR","Retirement Club","HR Generalist III","Ratna Silverthorne","M",32580,8664,16527,.,120780
120777,"US","Shared Functions","Group HR Management","Group HR","Retirement Club","HR Specialist I","Kary Sacher","M",40955,4833,14000,.,120780
120778,"US","Shared Functions","Group HR Management","Group HR","Retirement Club","HR Specialist I","Angela Gardner","F",43650,-389,10258,.,120780
120779,"US","Shared Functions","Group HR Management","Group HR","Staff Administration","HR Analyst II","Jennifer Eggleston","F",43690,7582,15035,.,120780
120780,"US","Shared Functions","Group HR Management","Group HR","Staff Administration","HR Manager","Kimberly Walcott","F",62995,4992,13057,.,120262
120781,"US","Shared Functions","Group HR Management","Recruitment & Training","Group Recruitment","Recruiter I","Sarah Sitnik","F",32620,11710,17867,18262,120782
120782,"US","Shared Functions","Group HR Management","Recruitment & Training","Group Recruitment","Recruitment Manager","Rilma Sines","F",63915,6907,15857,.,120262
120783,"US","Shared Functions","Group HR Management","Recruitment & Training","Group Recruitment","Recruiter III","Davis Karp","M",42975,6928,14610,.,120782
120784,"US","Shared Functions","Group HR Management","Recruitment & Training","Group Recruitment","Recruiter II","Jennifer Pinol","F",35715,8514,17776,.,120782
120785,"US","Shared Functions","Group HR Management","Recruitment & Training","Recruitment & Training","Training Manager","Damesha Donnell","F",48335,4769,13666,.,120780
120786,"US","Shared Functions","Group HR Management","Recruitment & Training","Recruitment & Training","Trainer I","Chris-Anne Delafuente","F",32650,-4306,6575,.,120785
120787,"US","Shared Functions","Group HR Management","Recruitment & Training","Recruitment & Training","Trainer II","Carl Peachey","M",34000,4982,14610,.,120785
120788,"US","Shared Functions","Group HR Management","Recruitment & Training","Recruitment & Training","Trainer I","Smitty Lisowe","M",33530,4912,14214,.,120785
120789,"US","Shared Functions","Group HR Management","Recruitment & Training","Recruitment & Training","Trainer III","Julius Denhollem","M",39330,3117,9831,17317,120785
120790,"US","Shared Functions","IS","Applications","Applications","ETL Specialist II","Tara O'Toole","F",53740,6915,14365,.,120791
120791,"US","Shared Functions","IS","Applications","Applications","Systems Architect IV","Richard Chiseloff","M",61115,3129,11231,.,120798
120792,"US","Shared Functions","IS","Applications","Applications","Systems Architect II","Omeba Horne","F",54760,7383,15188,.,120791
120793,"US","Shared Functions","IS","Applications","Applications","ETL Specialist I","William Mamo","M",47155,4968,14762,.,120791
120794,"US","Shared Functions","IS","Applications","Management Applications","Applications Developer IV","Samantha Cross","F",51265,8400,17348,.,120800
120795,"US","Shared Functions","IS","Applications","Management Applications","Applications Developer II","David Deacon","M",49105,4764,11901,17197,120794
120796,"US","Shared Functions","IS","Applications","Management Applications","Applications Developer II","Philip Kellis","M",47030,-599,9921,.,120794
120797,"US","Shared Functions","IS","Applications","Management Applications","Applications Developer I","Sherrie Jones","F",43385,-410,8005,.,120794
120798,"US","Shared Functions","IS","IS Management","IS Management","Senior Project Manager","Elizabeth Ardskin","F",80755,1269,11323,.,120800
120799,"US","Shared Functions","IS","IS Management","IS Management","Office Assistant III","Jeffery Stefandonovan","M",29070,8482,15645,.,120800
120800,"US","Shared Functions","IS","IS Management","IS Management","IS Director","Fred Benyami","M",80210,6928,15127,17197,120262
120801,"US","Shared Functions","IS","IS Operations","Applications","Applications Developer I","Kathryn Kennedy","F",40040,6639,15887,.,120798
120802,"US","Shared Functions","IS","IS Operations","Applications","Applications Developer IV","U'Vonda Parker","F",65125,-2426,8036,17713,120798
120803,"US","Shared Functions","IS","IS Operations","Applications","Applications Developer I","Victor Droste","M",43630,-574,8036,.,120798
120804,"US","Shared Functions","IS","IS Operations","IS operations","IS Administrator III","Ahmed Zied","M",55400,-4342,6575,.,120798
120805,"US","Shared Functions","IS","IS Operations","IS operations","BI Administrator IV","Robert Walker","M",58530,8213,16162,.,120798
120806,"US","Shared Functions","IS","IS Operations","IS operations","IS Administrator II","Lorna Ousley","F",47285,6630,13180,.,120798
120807,"US","Shared Functions","IS","IS Operations","IS operations","IS Administrator I","Gerlinde Peppers","F",43325,1443,9497,17775,120798
120808,"US","Shared Functions","IS","Planning & Design","Planning","BI Specialist II","Marcel Dupree","M",44425,3074,10379,.,120798
120809,"US","Shared Functions","IS","Planning & Design","Planning","BI Architect II","Chiorene Marion","F",47155,-4370,6575,.,120798
120810,"US","Shared Functions","IS","Planning & Design","Planning","IS Architect III","Loyal Esguerra","M",58375,-454,8826,.,120798
120811,"US","Shared Functions","IS","Till Systems","Till Systems","Applications Developer I","Dale Bergeron-Jeter","M",43985,5017,13696,.,120814
120812,"US","Shared Functions","IS","Till Systems","Till Systems","Applications Developer II","Fauver Arruza","M",45810,6624,16649,.,120814
120813,"US","Shared Functions","IS","Till Systems","Till Systems","Applications Developer IV","John Heinsler","M",50865,5005,13515,17531,120814
120814,"US","Shared Functions","IS","Till Systems","Till Systems","Project Manager","Victor Scroggin","M",59140,1249,8644,.,120800
120815,"US","Shared Functions","Marketing","Orion Club Member Service","Orion Club Member Service","Service Administrator III","Craig Honore","M",31590,12049,18353,.,120719
120816,"US","Shared Functions","Marketing","Orion Club Member Service","Orion Club Member Service","Service Administrator I","Tessia Hart","F",30485,4871,13727,.,120719
120992,"US","Orion USA","Administration","Administration","Administration","Office Assistant I","Lisa Kicak","F",26940,8448,16284,.,120996
120993,"US","Orion USA","Administration","Administration","Administration","Office Assistant I","Lorraine Boatright","F",26260,5100,15035,.,120996
120994,"US","Orion USA","Administration","Administration","Administration","Office Administrator I","Danelle Sergeant","F",31645,6741,14184,.,120996
120995,"US","Orion USA","Administration","Administration","Administration","Office Administrator II","Lily-Ann Gordo","F",34850,10391,18475,.,120996
120996,"US","Orion USA","Administration","Administration","Administration","Office Assistant IV","Johannes Wade","M",32745,6776,17045,.,121000
120997,"US","Orion USA","Administration","Administration","Shipping Charges","Shipping Administrator I","Mary Donathan","F",27420,6899,14854,.,121000
120998,"US","Orion USA","Administration","Administration","Shipping Charges","Clerk I","Tondelayo Benedicto","F",26330,8740,17988,.,120997
120999,"US","Orion USA","Administration","Administration","Shipping Charges","Clerk I","Sherelyn Heilmann","F",27215,1457,10318,.,120997
121000,"US","Orion USA","Administration","Administration","Shipping Charges","Administration Manager","Herman Supple","M",48600,2946,13849,.,121141
121001,"US","Orion USA","Administration","Goods Entrance","Stock Admin","Warehouse Manager","Tony House","M",43615,1116,7914,.,121000
121002,"US","Orion USA","Administration","Goods Entrance","Stock Admin","Warehouse Assistant II","Terry-Ann Clark","F",26650,-470,8735,17775,121001
121003,"US","Orion USA","Administration","Goods Entrance","Stock Admin","Warehouse Assistant I","Troyce Van Der Wiele","M",26000,11813,18444,.,121001
121004,"US","Orion USA","Administration","Security","Security Guards","Security Manager","Kellen Smith","M",30895,-4168,6575,.,121000
121005,"US","Orion USA","Administration","Security","Security Guards","Security Guard I","Yuh-Lang Mclamb","M",25020,10423,17563,.,121004
121006,"US","Orion USA","Administration","Security","Security Guards","Security Guard I","Bernard Bolster","M",26145,11242,17837,18201,121004
121007,"US","Orion USA","Administration","Security","Security Guards","Security Guard II","John Banaszak","M",27290,3207,11354,.,121004
121008,"US","Orion USA","Administration","Security","Security Guards","Security Guard II","Eron Mckenzie","M",27875,4932,13727,.,121004
121009,"US","Orion USA","Administration","Service Center","Service","Service Administrator I","Robert Goodwin","M",32955,8738,15918,.,121000
121010,"US","Orion USA","Administration","Service Center","Service","Service Assistant I","Donald Lamp","M",25195,10453,18322,.,121009
121011,"US","Orion USA","Administration","Service Center","Service","Service Assistant I","Steven Banchi","M",25735,-4313,6575,.,121009
121012,"US","Orion USA","Administration","Service Center","Service","Service Assistant II","Carmelo Broome","M",29575,10983,17410,17866,121009
121013,"US","Orion USA","Engineering","Engineering","Electrical Workshop","Electrician II","Seco Hargrave","M",26675,8518,16162,.,121016
121014,"US","Orion USA","Engineering","Engineering","Electrical Workshop","Electrician III","Donelle Liguori","F",28510,6695,15918,.,121016
121015,"US","Orion USA","Engineering","Engineering","Engineering","Technician I","Wilson Elmoslamy","M",26140,8747,16315,.,121016
121016,"US","Orion USA","Engineering","Engineering","Engineering","Technical Manager","Lutezenia Sullivan","F",48075,7323,17776,.,121000
121017,"US","Orion USA","Engineering","Engineering","Engineering","Technician II","Gilbert Arizmendi","M",29225,10232,17957,.,121016
121018,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Julienne Magolan","F",27560,-4381,6575,17286,121144
121019,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. IV","Scott Desanctis","M",31320,11133,17684,18109,121144
121020,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. IV","Cherda Ridley","F",31750,10280,16922,.,121144
121021,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. IV","Priscilla Farren","F",32985,6918,13939,.,121144
121022,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. IV","Robert Stevens","M",32210,8701,16833,17775,121144
121023,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. I","Shawn Fuller","M",26010,2994,12174,18140,121144
121024,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Michael Westlund","M",26600,10491,17653,.,121144
121025,"US","Orion USA","Sales","Sales","Assorted Sports Articles","Sales Rep. II","Barnaby Cassey","M",28295,-2274,7183,.,121144
121026,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. IV","Terrill Jaime","M",31515,11269,18353,.,121144
121027,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. II","Allan Rudder","M",26165,3047,12388,.,121144
121028,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. I","William Smades","M",26585,11805,18567,.,121144
121029,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. I","Kuo-Chung Mcelwee","M",27225,3278,12388,.,121144
121030,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. I","Jeryl Areu","M",26745,8716,16468,.,121144
121031,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. III","Scott Filan","M",28060,3112,10805,.,121144
121032,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. IV","Nasim Smith","M",31335,11742,18322,.,121144
121033,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. III","Kristie Snitzer","F",29775,11267,17684,.,121144
121034,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. II","John Kirkman","M",27110,11923,18628,.,121144
121035,"US","Orion USA","Sales","Sales","Children Sports","Sales Rep. II","James Blackley","M",26460,-4299,6575,.,121144
121036,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. I","Teresa Mesley","F",25965,11887,17440,18201,121144
121037,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. III","Muthukumar Miketa","M",28310,6737,16861,.,121144
121038,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. I","David Anstey","M",25285,11731,18475,18659,121144
121039,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. II","Donald Washington","M",27460,-577,8887,.,121144
121040,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. III","Brienne Darrohn","F",29525,1282,9801,.,121144
121041,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. II","Jaime Wetherington","F",26120,-4349,6575,.,121144
121042,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. III","Joseph Robbin-Coker","M",28845,8494,16010,.,121144
121043,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. II","Sigrid Kagarise","F",28225,5061,13209,.,121144
121044,"US","Orion USA","Sales","Sales","Clothes","Sales Rep. I","Ray Abbott","M",25660,-386,7152,.,121144
121045,"US","Orion USA","Sales","Sales","Golf","Sales Rep. II","Cascile Hampton","F",28560,3086,13880,17591,121143
121046,"US","Orion USA","Sales","Sales","Golf","Sales Rep. I","Roger Mandzak","M",25845,10477,18444,18628,121143
121047,"US","Orion USA","Sales","Sales","Golf","Sales Rep. I","Karen Grzebien","F",25820,8730,18506,18687,121143
121048,"US","Orion USA","Sales","Sales","Golf","Sales Rep. I","Lawrie Clark","F",26560,10402,18506,18687,121143
121049,"US","Orion USA","Sales","Sales","Golf","Sales Rep. I","Perrior Bataineh","F",26930,11002,18597,.,121143
121050,"US","Orion USA","Sales","Sales","Golf","Sales Rep. II","Patricia Capristo-Abramczyk","F",26080,10969,18597,.,121143
121051,"US","Orion USA","Sales","Sales","Golf","Sales Rep. I","Glorina Myers","F",26025,-2435,8340,.,121143
121052,"US","Orion USA","Sales","Sales","Golf","Sales Rep. II","Richard Fay","M",26900,10966,18567,.,121143
121053,"US","Orion USA","Sales","Sales","Indoor Sports","Sales Rep. III","Tywanna Mcdade","F",29955,-4117,6606,.,121143
121054,"US","Orion USA","Sales","Sales","Indoor Sports","Sales Rep. III","Daniel Pulliam","M",29805,-415,7610,.,121143
121055,"US","Orion USA","Sales","Sales","Indoor Sports","Sales Rep. III","Clement Davis","M",30185,11695,18475,.,121143
121056,"US","Orion USA","Sales","Sales","Shoes","Sales Rep. II","Stacey Lyszyk","F",28325,10413,17287,.,121143
121057,"US","Orion USA","Sales","Sales","Shoes","Sales Rep. I","Tachaun Voron","M",25125,1455,9101,.,121143
121058,"US","Orion USA","Sales","Sales","Shoes","Sales Rep. I","Del Kohake","M",26270,6767,17075,.,121143
121059,"US","Orion USA","Sales","Sales","Shoes","Sales Rep. II","Jacqulin Carhide","F",27425,1393,9222,17531,121143
121060,"US","Orion USA","Sales","Sales","Shoes","Sales Rep. III","Elizabeth Spofford","F",28800,-4224,6575,.,121143
121061,"US","Orion USA","Sales","Sales","Shoes","Sales Rep. III","Lauris Hassam","M",29815,-534,10409,.,121143
121062,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. IV","Debra Armant","F",30305,10528,18475,.,121145
121063,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. II","Regi Kinol","M",35990,8608,18110,.,121145
121064,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. I","Asishana Polky","M",25110,2949,13027,.,121145
121065,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. III","Corneille Malta","F",28040,10475,18353,.,121145
121066,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. II","Ceresh Norman","F",27250,-4148,6575,18201,121145
121067,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. IV","Jeanilla Macnair","F",31865,10975,18322,18506,121145
121068,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. II","Salaheloin Osuba","M",27550,5084,13393,.,121145
121069,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. II","Jason Lapsley","M",26195,4826,12692,.,121145
121070,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. III","Agnieszka Holthouse","F",29385,10535,18294,.,121145
121071,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. III","John Hoppmann","M",28625,1348,7914,.,121145
121072,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. I","Christer North","M",26105,8410,17776,18201,121145
121073,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. I","Donald Court","M",27100,-2422,6575,.,121145
121074,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. I","Eric Michonski","M",26990,1155,11962,.,121145
121075,"US","Orion USA","Sales","Sales","Outdoors","Sales Rep. II","Kasha Sugg","F",28395,-4026,6575,.,121145
121076,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. II","Micah Cobb","M",26685,3204,9862,17683,121143
121077,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. III","Bryce Smotherly","M",28585,10475,18536,.,121143
121078,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. I","Lionel Wende","M",27485,-2436,8340,.,121143
121079,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. I","Azmi Mees","M",25770,6728,15280,.,121143
121080,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. I","Kumar Chinnis","M",32235,1119,11566,.,121143
121081,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. III","Susie Knudson","F",30235,-2470,7396,.,121143
121082,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. III","Richard Debank","M",28510,-2371,7944,.,121143
121083,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. I","Tingmei Sutton","F",27245,1165,8460,.,121143
121084,"US","Orion USA","Sales","Sales","Racket Sports","Sales Rep. I","Tulsidas Ould","M",22710,3150,12784,.,121143
121085,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. IV","Rebecca Huslage","M",32235,11273,18628,.,121143
121086,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. I","John-Michael Plybon","M",26820,-4033,6575,.,121143
121087,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. II","Virtina O'Suilleabhain","F",28325,6915,15765,18352,121143
121088,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. I","Momolu Kernitzki","M",27240,11849,18628,.,121143
121089,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. II","Gregory Sauder","M",28095,-498,6756,18566,121143
121090,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. I","Betty Klibbe","F",26600,-561,8797,.,121143
121091,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. II","Ernest Kadiri","M",27325,4798,12054,.,121143
121092,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. I","Gynell Pritt","F",25680,6641,17014,.,121143
121093,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. I","Carl Vasconcellos","M",27410,3121,13880,17347,121143
121094,"US","Orion USA","Sales","Sales","Running - Jogging","Sales Rep. I","Larry Tate","M",26555,-724,8279,.,121143
121095,"US","Orion USA","Sales","Sales","Swim Sports","Sales Rep. II","Sara Kratzke","F",28010,4852,12965,.,121143
121096,"US","Orion USA","Sales","Sales","Swim Sports","Sales Rep. I","Robert Newstead","M",26335,4886,14365,.,121143
121097,"US","Orion USA","Sales","Sales","Swim Sports","Sales Rep. II","Willeta Chernega","F",26830,6870,14518,.,121143
121098,"US","Orion USA","Sales","Sales","Swim Sports","Sales Rep. I","Hal Heatwole","M",27475,11769,18383,.,121143
121099,"US","Orion USA","Sales","Sales","Swim Sports","Sales Rep. IV","Royall Mrvichin","M",32725,8478,16192,.,121143
121100,"US","Orion USA","Sales","Sales","Swim Sports","Sales Rep. II","Tzue-Ing Cormell","M",28135,-2440,7396,.,121143
121101,"US","Orion USA","Sales","Sales","Swim Sports","Sales Rep. I","Burnetta Buckner","F",25390,11197,18567,.,121143
121102,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. I","Rocheal Flammia","F",27115,8577,18414,.,121143
121103,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. I","Brian Farnsworth","M",27260,11806,18506,.,121143
121104,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. II","Leoma Johnson","F",28315,3238,11048,16832,121143
121105,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. III","Jessica Savacool","F",29545,8529,17167,.,121143
121106,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. I","James Hilburger","M",25880,4781,14641,.,121143
121107,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. IV","Rose Anger","F",31380,11071,18444,.,121143
121108,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. I","Libby Levi","F",25930,11873,18567,18748,121143
121109,"US","Orion USA","Sales","Sales","Team Sports","Sales Rep. I","Harold Boulus","M",26035,5057,12539,.,121143
121110,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Albert Knapp","M",26370,-4279,18597,18627,121145
121111,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Salim Maholo","M",26885,-4185,18597,18747,121145
121112,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Lee Stouchko","M",26855,11304,18597,18627,121145
121113,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Karen Costine","F",27480,-679,18597,18658,121145
121114,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Okema Whipkey","F",26515,-4075,18597,18808,121145
121115,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Aquilla O'Carroll","M",26430,1139,18597,18747,121145
121116,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Mary Bond-Teague","F",26670,3188,18597,18717,121145
121117,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Teresa Sergi","F",26640,6651,18597,18627,121145
121118,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Paul Lawson","M",25725,8460,18597,18778,121145
121119,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Bruce Armogida","M",25205,3229,18597,18686,121145
121120,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Susan Labach","F",25020,6872,18597,18686,121145
121121,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Halouise Cassone","F",25735,11021,18597,18778,121145
121122,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Stancey Scarbrough","M",26265,11017,18597,18717,121145
121123,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Randy Helyar","M",26410,-4266,18597,18717,121145
121124,"US","Orion USA","Sales","Sales","Temporary","Temp. Sales Rep.","Deginald Gonzalez","M",26925,4794,18597,18627,121145
121125,"US","Orion USA","Sales","Sales","Trainees","Trainee","Michael Holt","M",25315,6681,17167,17347,121145
121126,"US","Orion USA","Sales","Sales","Trainees","Trainee","James Penhale","M",26015,-432,17167,17347,121145
121127,"US","Orion USA","Sales","Sales","Trainees","Trainee","Keyna Mangini","F",25435,11203,18049,18231,121145
121128,"US","Orion USA","Sales","Sales","Trainees","Trainee","Glacia Nazar","F",25405,6751,17167,17347,121145
121129,"US","Orion USA","Sales","Sales","Trainees","Trainee","Yusef Hafley","M",30945,3043,17167,17347,121145
121130,"US","Orion USA","Sales","Sales","Trainees","Trainee","Gary Herndon","M",25255,10247,17563,17744,121145
121131,"US","Orion USA","Sales","Sales","Trainees","Trainee","William Pantages","M",25445,4929,17167,17347,121145
121132,"US","Orion USA","Sales","Sales","Trainees","Trainee","Shia-Ling Digiorgio","M",24390,-692,17167,17347,121145
121133,"US","Orion USA","Sales","Sales","Trainees","Trainee","Peter Pringley","M",25405,8714,17167,17347,121145
121134,"US","Orion USA","Sales","Sales","Trainees","Trainee","Paul Tacosa","M",25585,3105,17167,17347,121145
121135,"US","Orion USA","Sales","Sales","Winter Sports","Sales Rep. I","Tammy Ruta","F",27010,-573,6787,.,121145
121136,"US","Orion USA","Sales","Sales","Winter Sports","Sales Rep. I","Lesia Galarneau","F",27460,6770,17136,17805,121145
121137,"US","Orion USA","Sales","Sales","Winter Sports","Sales Rep. I","Michael. R. Boocks","M",27055,11705,18353,.,121145
121138,"US","Orion USA","Sales","Sales","Winter Sports","Sales Rep. I","Hershell Tolley","M",27265,-2498,6575,.,121145
121139,"US","Orion USA","Sales","Sales","Winter Sports","Sales Rep. II","Diosdado Mckee","F",27700,1326,11504,.,121145
121140,"US","Orion USA","Sales","Sales","Winter Sports","Sales Rep. I","Saunders Briggi","M",26335,8423,16527,18293,121145
121141,"US","Orion USA","Sales Management","Sales Management","Sales Management","Vice President","Henri Le Bleu","M",194885,-4213,6575,.,120261
121142,"US","Orion USA","Sales Management","Sales Management","Sales Management","Director","Reginald Steiber","M",156065,4793,13635,.,121141
121143,"US","Orion USA","Sales Management","Sales Management","Sales Management","Senior Sales Manager","Louis Favaron","M",95090,5078,15157,.,121142
121144,"US","Orion USA","Sales Management","Sales Management","Sales Management","Sales Manager","Renee Capachietti","F",83505,3101,13088,.,121142
121145,"US","Orion USA","Sales Management","Sales Management","Sales Management","Sales Manager","Dennis Lansberry","M",84260,-2231,7396,.,121142
121146,"US","Orion USA","Sales Management","Sales Management","Sales Management","Secretary III","Julieanne Sangiorgio","F",29320,11300,18353,.,121141
121147,"US","Orion USA","Sales Management","Sales Management","Sales Management","Secretary II","Christine Sneed","F",29145,4896,11566,.,121142
121148,"US","Orion USA","Sales Management","Sales Management","Sales Management","Business Analyst II","Shane Sadig","M",52930,4749,15341,17197,121141
;
run;