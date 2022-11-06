CREATE TABLE public."Users" (
	id VARCHAR (255) NOT NULL,
	"name" VARCHAR (255) NOT NULL,
	lastname VARCHAR (255) NOT NULL,
	email VARCHAR (255) NOT NULL,
	"password" VARCHAR (255) NOT NULL,
	"role" VARCHAR (255) NOT NULL DEFAULT 'user'::VARCHAR (255),
	"createdAt" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"updatedAt" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT "Users_pkey" PRIMARY KEY (id)
);
CREATE UNIQUE INDEX "Users_email_key" ON public."Users" USING btree (email);

-- public."AccessToken" definition

-- Drop table

-- DROP TABLE public."AccessToken";

CREATE TABLE public."AccessToken" (
	id VARCHAR (255) NOT NULL,
	"token" VARCHAR (255) NOT NULL,
	active bool NOT NULL DEFAULT true,
	"userId" VARCHAR (255) NULL,
	CONSTRAINT "AccessToken_pkey" PRIMARY KEY (id)
);


-- public."AccessToken" foreign keys

ALTER TABLE public."AccessToken" ADD CONSTRAINT "AccessToken_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL ON UPDATE CASCADE;

-- public."Posts" definition

-- Drop table

-- DROP TABLE public."Posts";

CREATE TABLE public."Posts" (
	id VARCHAR (255) NOT NULL,
	title VARCHAR (255) NOT NULL,
	"content" VARCHAR (255) NOT NULL,
	published bool NOT NULL DEFAULT false,
	"createdAt" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"updatedAt" timestamp(3) NOT NULL,
	"userId" VARCHAR (255) NULL,
	CONSTRAINT "Posts_pkey" PRIMARY KEY (id)
);


-- public."Posts" foreign keys

ALTER TABLE public."Posts" ADD CONSTRAINT "Posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL ON UPDATE CASCADE;


INSERT INTO public."Users" (id,"name",lastname,email,"password") VALUES
('9311802b-623a-4680-8ec0-ff252eee1910', 'Royal', 'Lockhurst', 'rlockhurst0@kickstarter.com', 'RY2FwNv9wc'),
('2cc913d4-8f8b-42b9-881e-07c7af369a17', 'Rozamond', 'Franceschi', 'rfranceschi1@globo.com', 'zgkCHnr7c'),
('db305c3b-11fa-4eed-b8dd-1c2b5a936c5f', 'Dallis', 'Lathbury', 'dlathbury2@paypal.com', 'uM93UpS'),
('398befe5-a5ce-42ae-a018-27773301671c', 'Cynthea', 'Clemonts', 'cclemonts3@rambler.ru', 'kUdhdkQ8'),
('cb4ee2ff-50d3-41fe-aabc-b4ccdb77b53e', 'Claiborne', 'Faro', 'cfaro4@alibaba.com', '6i4ojBbb48Np'),
('5238426d-f6ce-4670-9417-b1969df0fed0', 'Luce', 'Siggins', 'lsiggins5@indiegogo.com', 'b124cSVaitgp'),
('362679d4-79f3-4fba-b2ad-42ff539e5db2', 'Griffy', 'Barfield', 'gbarfield6@furl.net', 'H0sm3q'),
('25e9159f-5a9b-479d-afe7-e43e0fad2ad9', 'Frederique', 'Braunthal', 'fbraunthal7@si.edu', '16khBhA'),
('c50a962e-b305-49a9-98bf-ebdadf1eb7b7', 'Salmon', 'Altofts', 'saltofts8@weebly.com', '9IXMCkQxGXoB'),
('c0434d29-69e8-4f43-b258-fe360645877a', 'Glennis', 'Brunetti', 'gbrunetti9@sohu.com', '8CbpDV'),
('a91a31a3-0321-471b-8d98-00f85bfe3f31', 'Daphna', 'Lince', 'dlincea@msn.com', 'sM1l8E9JopOj'),
('1ac1e215-f4e9-42ec-98a3-3b239149a4f7', 'Jody', 'Kinane', 'jkinaneb@biglobe.ne.jp', 'PVd4ptXN'),
('d3bc7f5f-b337-42ea-a0db-c64a8824ecda', 'Rea', 'McQuaker', 'rmcquakerc@wsj.com', 'KaZWt6IvF7'),
('e777f3b6-9741-4599-bf29-5c3dd39959ab', 'Lindy', 'Instock', 'linstockd@rediff.com', 'Xxc57r2EvJr'),
('6fefe9a4-3837-49be-a924-23b9f6c922ce', 'Tessie', 'Sloley', 'tsloleye@samsung.com', 'pzaQrx6gDbH'),
('74b973da-5e43-45fa-bcdc-a33116928685', 'Zared', 'MacFadzan', 'zmacfadzanf@google.co.uk', 'I6eCC4'),
('89ed33be-13ec-4486-a2b2-4b59c67582fe', 'Gilberte', 'Juniper', 'gjuniperg@marketwatch.com', 'ocZlui'),
('2463894b-5119-4c1f-87fc-f31952bd3471', 'Cathryn', 'Michele', 'cmicheleh@arizona.edu', 'ma9x7eD'),
('1aede51b-976b-4fcf-a6d3-2499e2c75528', 'Merrily', 'Kareman', 'mkaremani@apple.com', 'Ma3886WEeeH2'),
('4ce7e684-6106-4bf7-92f9-9c38a338f7e6', 'Ker', 'Wadie', 'kwadiej@issuu.com', 'y4xGD73Fj'),
('d5dd1cf3-bdf1-4375-a8fb-9ac8735ce126', 'Ronni', 'Village', 'rvillagek@xinhuanet.com', '4mM1xdRyHfF'),
('bf8a4a52-1eb0-44af-bd7d-be45dac31cd5', 'Wilmar', 'Vallens', 'wvallensl@fc2.com', 'jXqJHUjJ'),
('f743fbd6-7f39-4503-b693-89bc6a1881ba', 'Caddric', 'Tapenden', 'ctapendenm@deviantart.com', 's8f4J4'),
('bb0be9bc-6883-44ff-b220-b90a450e5ed1', 'Rochell', 'Sapena', 'rsapenan@patch.com', 'lIkZ8GPGW'),
('822f8936-0ef8-4216-ba43-f0b442ab9bbc', 'Ninnetta', 'Yarr', 'nyarro@bandcamp.com', 'ZFMC60AT'),
('1bede0f7-6ac0-4e31-86dd-c999b9dcc58c', 'Raff', 'Birts', 'rbirtsp@umich.edu', '8W9pka4'),
('ed8d8ae9-49ed-49ee-aff9-5b1a19ca5c2e', 'Shaw', 'Seer', 'sseerq@economist.com', 'ysRuoLhMYjM'),
('33a895c4-4c43-4d7d-b8eb-1fb5ddc374c3', 'Jessie', 'Marde', 'jmarder@unblog.fr', 'ukGdeWjzoj7C'),
('3a6245e8-5593-4200-8b1d-6ea07cdb1fde', 'Kerk', 'Volonte', 'kvolontes@shinystat.com', '8oYiItXz4Zn'),
('fe1f4407-8508-40e5-a4c4-76e6e98e369d', 'Bernarr', 'Stovell', 'bstovellt@businessinsider.com', 'BxqgU9t'),
('d4bb01a3-da64-4175-9bcc-dee11d233459', 'Bridget', 'MacFarland', 'bmacfarlandu@berkeley.edu', 'rjT0o44sPi'),
('d1bc4074-3cd7-494a-9e9f-52862d435181', 'Viole', 'L'' Anglois', 'vlangloisv@last.fm', '41jRLp'),
('bec424bd-704c-4fcd-a661-f21fd01c81d6', 'Cloe', 'Goymer', 'cgoymerw@purevolume.com', 'cR1OICUzu'),
('d99e63a4-b0d0-4f11-a4c4-b72c2e2bd67d', 'Julienne', 'Derby', 'jderbyx@dot.gov', 'srXvEhr'),
('7d7e53ae-878e-4c7c-b06e-2cfa482093ba', 'Ansel', 'Leathley', 'aleathleyy@java.com', 'NngR75Oi4Hrc'),
('9feb14fc-d24e-446d-98ef-5ac58873d184', 'Elysia', 'McLarnon', 'emclarnonz@theguardian.com', 'tThAkZEbPAeA'),
('cf919512-117c-4535-9400-46774583bc8e', 'Gus', 'Slader', 'gslader10@vkontakte.ru', 'yHTGeIiyQzO'),
('175ad28d-14ce-49a0-a9e1-fae359cc6a63', 'Hannah', 'Leon', 'hleon11@guardian.co.uk', 's4FYinuDHQ'),
('7499efac-9448-406a-b018-20167658f68e', 'Prissie', 'Van der Kruijs', 'pvanderkruijs12@mysql.com', '5S5oR9LZ'),
('f4ad5793-6b66-4e2d-aa8a-de8ddd1403d0', 'Duncan', 'Magnay', 'dmagnay13@mysql.com', 'I0d1O7ADJb'),
('c4ce45c5-8cac-4553-ac62-756b4be1f83a', 'Elora', 'Hedling', 'ehedling14@php.net', 'Jpn1gHXAeMrD'),
('7a422247-c72f-4b3c-a31e-6be99051aa05', 'Oralie', 'McGaughay', 'omcgaughay15@trellian.com', 'wDdECaguC8h'),
('7f44bbca-d273-4351-aaf7-d35b6701d829', 'Melanie', 'Calton', 'mcalton16@blog.com', 'sI78wLW'),
('793ae6fb-3ace-4bb5-bd68-853fdc0a81c5', 'Franciska', 'Simnett', 'fsimnett17@wikimedia.org', 'nlCoKnYn'),
('839a7ad4-5eab-41ec-b50e-d10536657b4e', 'Drona', 'Gapp', 'dgapp18@wikimedia.org', 'L2E9O5S'),
('ad8b683d-dc81-4f82-85c3-226c1af53a2e', 'Juli', 'Carillo', 'jcarillo19@cbsnews.com', 'DGzpYiZuX'),
('55ffb3a7-0dbb-44d7-aa85-3a17eb61be53', 'Maurene', 'Stockley', 'mstockley1a@wunderground.com', 'IjkIaRp'),
('bf4b1210-c94c-4d55-a2c9-08fbaa847248', 'Gaven', 'Geke', 'ggeke1b@hibu.com', 'cqR4ohtRz'),
('1f32e60e-8675-45a3-9def-ee6635a4542c', 'Abdul', 'Dutt', 'adutt1c@yelp.com', 'lxUfxCw'),
('482c239d-1d2a-47e5-83c0-3056a85e62bc', 'Horatia', 'O Sullivan', 'hosullivan1d@ebay.com', 'oTZkFe'),
('5b56ddce-8e1e-4bd1-ade3-1b03a0c1437d', 'Ashlan', 'Brewett', 'abrewett1e@delicious.com', 'ktzWM2WMrUd'),
('abd754e7-2dc0-4506-9a1f-ce3ead799d97', 'Tania', 'Stroban', 'tstroban1f@opera.com', 'AsJEucXW'),
('4ee80ef4-25a8-44d9-b239-522d74f16e45', 'Lucine', 'Crabtree', 'lcrabtree1g@ezinearticles.com', 'pHYHmIk'),
('37928422-96d0-40e9-8ab5-7fa23caf5ff8', 'Katalin', 'Gypson', 'kgypson1h@theguardian.com', 'NOjv5E'),
('9e8584f4-8a53-4113-8f08-29df7d453d42', 'Scot', 'Treweela', 'streweela1i@skype.com', 'wcEL72p5g'),
('ade9137e-2166-4a8b-822b-3e41510e98c3', 'Willi', 'Denver', 'wdenver1j@upenn.edu', 'sFnnagtU5HI'),
('1b02659e-f9b0-415e-9640-fa003054c9d4', 'Wilie', 'MacKaile', 'wmackaile1k@thetimes.co.uk', 'ibxPAh'),
('ca23daed-0419-4f8d-9771-6b42043ac2a7', 'Angela', 'Lickorish', 'alickorish1l@marketwatch.com', '20gaJa6u'),
('a9377b99-20bb-477a-80ff-a0753445e98c', 'Dimitri', 'Bodleigh', 'dbodleigh1m@lycos.com', 'YjCh8Vea'),
('5bd118b5-52d0-4fee-8320-7a3ae7f48695', 'Robinet', 'Clemence', 'rclemence1n@yolasite.com', '6vKropJYFC1v'),
('ce61a03d-aaf1-486e-a9cd-1483219d76c6', 'Leon', 'Cranch', 'lcranch1o@symantec.com', 'y3B9U9XigY2N'),
('a75deeaf-b3aa-4f11-bb3b-833d0c00c005', 'Dacia', 'Bungey', 'dbungey1p@spotify.com', '3bxm5biwUCX3'),
('77147c72-906b-4c6d-be92-23aef9d0c90a', 'Dev', 'Knuckles', 'dknuckles1q@last.fm', 't2yvcIMjDlB4'),
('dabbfe36-d664-4209-8597-acd22dce01cc', 'Nelly', 'Darnbrook', 'ndarnbrook1r@census.gov', 'iSNpLm'),
('ffe3c859-5196-49b6-bd9e-e30f75fc49ac', 'Nancy', 'Cradick', 'ncradick1s@forbes.com', '9LAShZ1V'),
('0ead9270-372d-43bd-82e6-e2ceab1251dd', 'Roberto', 'Setter', 'rsetter1t@t.co', '3XHlk93'),
('759290c3-9b8c-4d68-9d8d-9782d5efd3d8', 'Aldus', 'Brookes', 'abrookes1u@blog.com', 'pWaaKDm'),
('c93fb51b-80af-479d-b89f-4dfcfcb28726', 'Kippar', 'Leaming', 'kleaming1v@amazonaws.com', 'OhjKnRo'),
('486905cf-c1d4-4395-b8ec-f9aa4cb6e359', 'Grant', 'Rollo', 'grollo1w@163.com', 'l4eSki7xLK'),
('834cd32c-050c-4aaa-8dd7-e31a1d3c9389', 'Dorena', 'Ivatts', 'divatts1x@issuu.com', '4ssryAcf5'),
('6788753e-7e4e-46bb-b866-e63b2b327e53', 'Dav', 'Crowdace', 'dcrowdace1y@earthlink.net', '9hybLi6rugb'),
('d485cf4f-d3c1-487e-b41d-183b76d83743', 'Jonathan', 'Arpin', 'jarpin1z@newsvine.com', 'ftD6WPWQdHLE'),
('6fa8f4fc-8012-4cf1-bf7e-85bff7f37a6d', 'Graehme', 'Piggens', 'gpiggens20@nymag.com', 'tfCEq53hE'),
('b803b567-7feb-4c04-ba1a-273404b02eed', 'Orelee', 'Hill', 'ohill21@is.gd', '7YdZw8W'),
('cd0b3b4b-b415-49f5-a7f0-7e9b7f2ab145', 'Olvan', 'Rubinsaft', 'orubinsaft22@ezinearticles.com', 'AHWrFQ8mKmuT'),
('c6d60ad2-0a9b-4c83-b07f-3f097a988399', 'Torey', 'Samwyse', 'tsamwyse23@alexa.com', 'SrN7Fe'),
('56f14890-1e8f-405c-b274-58c9487e67df', 'Betti', 'McDowell', 'bmcdowell24@admin.ch', 'dadmjHS6J'),
('8f476235-5833-4c55-8823-75d32f8e5a53', 'Berri', 'O''Boyle', 'boboyle25@themeforest.net', 'ImUcjkQWb'),
('c3c24807-02eb-4976-b6ba-86e77fe6f1ff', 'Barnaby', 'Brayley', 'bbrayley26@guardian.co.uk', 'SPpUSEx2s'),
('8dc0ff78-0d51-4086-b400-cda6747c66e3', 'Ambrosio', 'Davley', 'adavley27@theguardian.com', 'ennC2T5'),
('ee056cac-d4a3-4318-ad3d-eb730c4480b0', 'Chris', 'Juggins', 'cjuggins28@lycos.com', 'yYkz88iRLj7'),
('b860e629-6c0c-4f09-85ef-cbae233a8146', 'Gertrude', 'Musla', 'gmusla29@plala.or.jp', 'YOlLQuyfPN'),
('f294fadf-bb0c-4914-94e3-150b3fc8dd7e', 'Horatius', 'Neligan', 'hneligan2a@dell.com', 'i02UfrSF8FG4'),
('8d77117e-372b-4b53-ab55-1d7853fc06ab', 'Lianna', 'Wanjek', 'lwanjek2b@instagram.com', 'YVbYxys0W'),
('01dbb36b-6e35-4195-b03f-f643101e2e72', 'Wilmar', 'Holwell', 'wholwell2c@cbslocal.com', 'jNWv0r'),
('f374a3f7-8fe1-4095-9e0e-31a3c30a579d', 'Aurel', 'Rosenbush', 'arosenbush2d@cpanel.net', '21TzNwx'),
('86700fe0-de5c-4185-b89f-c9212d8759e9', 'Brendis', 'Tussaine', 'btussaine2e@wiley.com', '72jZYPSm'),
('fd665d4a-8f34-4cfc-af1d-70d73272e38f', 'Laurie', 'Acaster', 'lacaster2f@nydailynews.com', 'ksWBRjwEiBV'),
('e4d5f03c-4cfb-4ffc-9def-0279ab570f6e', 'Brenden', 'Deverock', 'bdeverock2g@cbslocal.com', 'kBSNtf'),
('64ccaca5-6df0-4c10-a5e2-471a57595bb4', 'Russ', 'Fisbey', 'rfisbey2h@whitehouse.gov', 'Suk4GJOgfJ1n'),
('4cf42909-b687-42b8-a650-2b8a2413d50e', 'Ade', 'Elliston', 'aelliston2i@elegantthemes.com', 'apnj8K'),
('68c7295a-6122-4a18-b730-bf4c11d198ef', 'Jermaine', 'Stockport', 'jstockport2j@time.com', 'KB5ES7'),
('580850ec-a501-4163-85d8-a3d8e50afc78', 'Zara', 'Ashpole', 'zashpole2k@free.fr', 'qr1eMY'),
('c101d360-5195-4f99-9dec-eea224c95a52', 'Brear', 'Imlach', 'bimlach2l@phoca.cz', 'H00K21'),
('930ea3ad-d477-42d9-a739-3f7e76552f9c', 'Zahara', 'Burrel', 'zburrel2m@slideshare.net', '2U9CABll'),
('37249c04-3848-4810-a7d3-ebabbc074f2a', 'Alena', 'Cannings', 'acannings2n@latimes.com', 'Gpej5OCGv'),
('4878eb55-d45b-49f3-a18b-46fda2333c08', 'Christean', 'Bedward', 'cbedward2o@soundcloud.com', 'ZcjEzf'),
('9e542ed3-0215-4959-a981-9c37c5b6385b', 'Jake', 'Jayume', 'jjayume2p@bbb.org', 'o4rcy5lOWInq'),
('f4ae82e6-eff7-4a83-b6fb-4d34ee28bf24', 'Aurelea', 'Castanares', 'acastanares2q@cornell.edu', '80kahW'),
('db047896-53f8-42e9-984a-e943bffae9a1', 'Kerianne', 'Van der Beken', 'kvanderbeken2r@geocities.com', 'qgNgXLYKu4Ho');