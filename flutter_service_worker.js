'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "7293c1866a1c0ffdb1706e4f7bf679af",
".git/config": "398756ab011bfb82069067bc5d7c6d20",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "e3f7a8936bc61b8cc1196db6b72f099d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "bfd8cbd0cec7c28be7cb94247c2b3aff",
".git/logs/refs/heads/main": "d108d80f4c2d9d4a3a47336ec0867a84",
".git/logs/refs/remotes/origin/main": "1d2c20a054adfa1bbcff6ac76af2c00e",
".git/objects/01/76c8f3b60f133da371e220253fd90528949124": "5f6383aba6d7b9e74232dcfcd0845ecd",
".git/objects/03/2fe904174b32b7135766696dd37e9a95c1b4fd": "80ba3eb567ab1b2327a13096a62dd17e",
".git/objects/15/b9be49c79856e6736832e4aa1e5cfb4586e814": "20e5270f83eada22bcf71db9174a3ffa",
".git/objects/16/4a9da152ef9afa49a84f31bd4ce29e9cd1e148": "f58f91e2045e7729ecae4fff7f9220db",
".git/objects/1c/adbd626018f4ae26095c1ebcf0657bd8df290c": "f1caebbd8d0793db3712608efdb74b7e",
".git/objects/22/d310791f14b35ac62011d03a5bac5d8637dd87": "42b5dff8c159f0297fbe5be1c590b037",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/25/f21d6b83c3a99c0fd077d8de6c7af2b413a94d": "6e3bf0a1c4a838fb609c1223ca0e61ce",
".git/objects/30/c02757838f65e29b5fa156b45bcc596d913b60": "6caa4510e51032e7352bcb69bd269b5c",
".git/objects/33/31d9290f04df89cea3fb794306a371fcca1cd9": "e54527b2478950463abbc6b22442144e",
".git/objects/35/85417efcde1e76bfa70188f772fd8bcb9391e5": "14797e404009234dca6aeb46b625ec7e",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/3e/a8dd051023692ff2dcb5eaaa8110155071b866": "db3300e18408d59cbb15e681ddf9b11c",
".git/objects/3e/e6735f2b9253bc2701483f685304f156d9d0cc": "e12fc80ea4c79238c842485280e2539f",
".git/objects/3f/37514cbdafac3706cefbd863b298d9399e48ca": "9e69bf0d2176673e512aa48d2526bcfe",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/40/c105c76a61c01a623712d91dafcb4b87ff5f27": "5716da99d8e8dded6e4e878dc59868db",
".git/objects/45/4247fa131e54efa0f91d711fd2357ddfe49a9c": "abe9a2c76396961860eb166e485957e0",
".git/objects/46/1468ae550cbf65b31793b51b938a6545ab2259": "cef76684b634c0667df0ae9d3792d0ad",
".git/objects/4a/0a1dcc85bc5f0a9434e61053fcfe02ecd5678c": "8199243f98639fcec8063a6abeb24dbe",
".git/objects/4f/02e9875cb698379e68a23ba5d25625e0e2e4bc": "254bc336602c9480c293f5f1c64bb4c7",
".git/objects/52/5feb8d658ae1a14dc905c134bea8732d2cea31": "0bb5417fe7983723e00d3c9872035030",
".git/objects/55/1a07ec6235ddc7bbf784ef00d9ff23677105aa": "14ec213c7473eecbfff7e772696fc6e4",
".git/objects/55/73e5b71bbdf16cafe59dda739976ff6b330c38": "80e39fa189afe53b2cb2925e493e8774",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/57/f1136c834b587a574d9153bce8db3605f29f32": "dab1ddef18c2f4ab1ecacbb812b7babf",
".git/objects/5a/13bd5a18e506d22647433b1980295ce67bcebe": "50b077c2b68b737800ac0d99a322b746",
".git/objects/5a/7ff067049582efaca1e400d11eec9c40550b82": "cc4968899d6bd2231a5611fdda2a7ed7",
".git/objects/5b/1125d9d5980208e57890d61e004fd8e88e1c4d": "853c2ffaaecd2523fd5e7d5bd673cf0d",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/5f/3c7279234eed4dd8e2997421f331033d2ff83a": "bdcbe75c08ae118627857c816fa436ae",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/60/64895da2462aec2c1070b218a20d3754ee2fcc": "b37775e0290b45dd9a2083ef97076edb",
".git/objects/62/6641630e79ad9e1c6865e133eceb72c575f088": "f728e5eeb286cdebfe5bead60f7704a7",
".git/objects/64/5116c20530a7bd227658a3c51e004a3f0aefab": "f10b5403684ce7848d8165b3d1d5bbbe",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6d/db3a89cc4eb83fc37c3b685428f3a07feec465": "f8a2336ce6864d2254294a85d130d3c0",
".git/objects/70/ca9d4416c527ca02419e392907a7d9c8f74b0c": "3a80d5f462255eb6de8eab9bbdfea021",
".git/objects/73/2e0fd26b3ba8318ae2402380109ff55e2ec1fc": "3bcc1edc7e6349ce821d4ec690cda35a",
".git/objects/79/5385188efd13136900705a04eade0adf60283a": "421a5c8381002034cfdb4c792613cdb8",
".git/objects/83/4f5531a5956d64a6b822daa9fc7e9abf092ad2": "d6b5eea474dc7b503c286a3c91dea1e3",
".git/objects/86/bd23254b2ef7fc0812d67e7cb85444a51f262d": "d00d9d3884b6619955102333b3e4f6dc",
".git/objects/87/ed4ac39ac08053458f7da4e60460a62b2f1f58": "30fb3b5b07b3bdd4da68ed88f8dea0eb",
".git/objects/88/5de6689a0ac7ca396a9226d123d1ef5d526fdd": "1d5db4568ba2059696ff9b11a64af9a9",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/44de511b405fb549b18412ee4ec49818b4c31a": "eae069cc72a25b7960c1b8fb4041015b",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/92/2cda9eeb10dc5fc9b3e16be1bee7b638629911": "6a24e027079e97ae78c2e4d6e564ed18",
".git/objects/95/2125744991d925b7ad894a204a65bd2f4d5b9d": "68d66534d249b20e8d6077dbaa40a7ef",
".git/objects/98/6f5ce040cdc15d19cd695b2432dec28eabc1b8": "21d768519b95aa22fc0a763c9bc2eac1",
".git/objects/9c/6b13d676327ca0a4dbe0a322685bd79c653d06": "67fb6496e0d356f57001ec2e3de2b5be",
".git/objects/9c/9482a174bb7fd020f4c52459bda1b3fdaa86c8": "23fbf34da619f3b447ab84d3930aa0d1",
".git/objects/9e/48f237ff7df43da604be8d0ff194e35bef6e83": "0293a833d50650b30fc5b68ad3ef2e73",
".git/objects/a0/56fa60f2fe7d8f82a1e7198f993f586b2b8048": "c60b2bcfa8c2b8a2d79b1849784362b7",
".git/objects/a2/edbe34bb97953bcf2b6ad6970a85f73a7678bf": "40e858da1fbe16fe9a39bc259ef74219",
".git/objects/a4/34054505341e510c3dfa32705fe01f50b2165a": "34b21672f10c3fe06a784985a19a7cae",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/ac/7e4cfee558a3d7e2f7e94621043d198623cc55": "b1c049934539bd25be81600c1888e2c7",
".git/objects/ad/c3a516ef9ba1247d60d5278af0dd73e56aa80a": "2f79e8b2c0770291e42018b81fdee3b2",
".git/objects/b5/ed400baa1639bcc07724bc1d941c6ce3c12174": "13e4008fdfbfcbe338d6fe8e4d4ce2cf",
".git/objects/b6/64cd0c1575601fb3070ba46de5eab95fea1262": "3efb0584dd48169abf71ca6b5b478392",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/ba/cd53ae93ca85b9fc81d374dbfb2bc047fe1642": "57be322cc12fbada30bb5188a2b837d4",
".git/objects/c3/61b868a597872fccf1250344092a4670e85dd5": "9262794dd8d0777ebcd8f76c01da154a",
".git/objects/c8/c497055ce6afb9f48edd3e4ba119fb5a8ea2ab": "9f8376e359e96e4183efe5262ab4e636",
".git/objects/cd/8eba521b6f385704f2a6023646dcb67d2d79b4": "ca3140948c0df9d8fcb709c791f05294",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/a0988864413e66eb713db776c6c3734357cfd5": "b4d8ffe4e702c8d4a374f4270c6bdc49",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/db/0399486cdd42bf78942249120f49af23434e11": "f192b667401988ca27ee25bbce8e88d5",
".git/objects/e3/cd59adea9ff7ad2b6d0ade67a8532587bf4a80": "30846e561b3c9be8fab8430573ff2f35",
".git/objects/e4/e60df6c9e462397f0126d9887865dcefe93aa5": "5586c60f18621a09420699a3f08c238c",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/ff/119835afb0e9eed9df468ab2449438940e9a2c": "f0842e408d40bd7964aa9693501ccd6d",
".git/refs/heads/main": "e9899fa0bf8a22d2bea4a65080d5cdf6",
".git/refs/remotes/origin/main": "e9899fa0bf8a22d2bea4a65080d5cdf6",
"assets/AssetManifest.bin": "cf3a4c28dec32854b2eccdd31dd4d3d4",
"assets/AssetManifest.bin.json": "63b6fd56f56bc994fbb92d4c337d1091",
"assets/AssetManifest.json": "7ec3afcc280fc7a62c4b35958305b00b",
"assets/assets/gif/developer%2520skills.json": "838dee70f11609332e3cb33b2b51e272",
"assets/assets/gif/Man%2520working%2520on%2520computer.json": "193986feee8a5d2d9aad9e2866466a58",
"assets/assets/gif/Programming%2520Computer.json": "7eed0f68676c339fe175a5c357c17682",
"assets/assets/icon/Android_Studio_icon_(2023).svg": "58b597c6404d0b54e2173567797fe789",
"assets/assets/icon/api-svgrepo-com.svg": "f511f88fdabaa0513d162a8952f2050d",
"assets/assets/icon/bloc-svgrepo-com.svg": "61c05bdac9cc880dd2d5da94ce89f2fc",
"assets/assets/icon/dart-svgrepo-com.svg": "77736b70355db3b992d712891749acd5",
"assets/assets/icon/figma-svgrepo-com.svg": "e4d477f4b50ca750010cc10c5a5bbb53",
"assets/assets/icon/firebase-svgrepo-com.svg": "7f1bf2795e067daf4ac3b42a2a140496",
"assets/assets/icon/flutter-svgrepo-com.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/icon/git-svgrepo-com.svg": "395d8c6917b47ac4dcde3600673f6519",
"assets/assets/icon/icons8-github-logo.svg": "91fc7cd187b65073322024169d2cd416",
"assets/assets/icon/icons8-visual-studio-code-2019.svg": "2c2b59fdbff9bf14176982fda623ad5c",
"assets/assets/icon/images%2520(2).svg": "230c59a5ed2e5a1cffed09a5ae6c98a6",
"assets/assets/icon/Logo%2520S.png": "0b3800b0fed57a0cf1107ff5f317b13f",
"assets/assets/icon/postman-icon-svgrepo-com.svg": "fbfb57a181ce251926d686d12e6cee5a",
"assets/assets/icon/raw.png": "d9e0cd0640d3b7dfcc6c2af37dd9d9cb",
"assets/assets/image/Audit%2520Info%2520Mockup.png": "904d67ab82a631dbc64bf3b9d98ba5de",
"assets/assets/image/chateo2.png": "902e2c4c0872d8de3cf8f941b3b5da16",
"assets/assets/image/eco%2520eats.png": "67362337934a6b4220d25879b291a27a",
"assets/assets/image/Group%25206863.png": "1ab46414bf4257d51b1ab871f7cdaa08",
"assets/assets/image/instagram.png": "9e2d4bc4cf4f0f7c850b723ca01d56db",
"assets/assets/image/laptop.png": "0e2b14e7fcb449cf448a36c0cb0ccb9d",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "1677f6db152e93fefd512f89b7cea2ea",
"assets/NOTICES": "c6cd459fbcbb31262c1e986d2ee0265f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "aea93550e544058da3c9d0a2887a678c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "86b36cedc72428a9577e5327aa30508a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "5a889e91b1e691d6829d22888b6d6ca1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Logo%20S.png": "0b3800b0fed57a0cf1107ff5f317b13f",
"index.html": "ea1a931da4d4621954ebb59b74bc5852",
"/": "ea1a931da4d4621954ebb59b74bc5852",
"Logo%20S.png": "0b3800b0fed57a0cf1107ff5f317b13f",
"main.dart.js": "e2e013eafe4a224b75acba9fb8cf753b",
"manifest.json": "f175467800ee0c28b4f367e0b726e7b8",
"version.json": "499de0f052001714a53bd81168870fba"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
