'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "01eb2c11c2685e04a0e3b0556549b914",
".git/config": "fa585a3547bd1034be4ddda9ba137584",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "d41d8cd98f00b204e9800998ecf8427e",
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
".git/index": "8a702de789c79a6235ba96dad9d8a76d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "5f60de7cba9e3ae2e7e9093543bb9a69",
".git/logs/refs/heads/main": "db68bf14ae906986bb24e6e70afc825d",
".git/logs/refs/remotes/origin/main": "6b2f8aad038891dfebd42e27777faeb5",
".git/objects/01/76c8f3b60f133da371e220253fd90528949124": "5f6383aba6d7b9e74232dcfcd0845ecd",
".git/objects/03/2fe904174b32b7135766696dd37e9a95c1b4fd": "80ba3eb567ab1b2327a13096a62dd17e",
".git/objects/11/55ef80bde7ca638761327c08a6826f0866ba25": "7ba75ab716ecb2e4c53923c6f724252e",
".git/objects/11/8cba5861dc14e2f574ec159b73a3bef511a675": "cf11943b35a86e00fa802f3235c16398",
".git/objects/12/2990d77ab0efa1b5074c8b6fce80f4635efb37": "9781847a95a1dece496b365e5023937c",
".git/objects/13/50f0b99fe3e735b242a4079eb8a6841487e72e": "26c6c077ce2facabe26e96e72d953995",
".git/objects/15/b9be49c79856e6736832e4aa1e5cfb4586e814": "20e5270f83eada22bcf71db9174a3ffa",
".git/objects/18/3dfc1bc82b84d2b0fbb1524f2568fc8bbdf41d": "f8bd1dae028217cc678a948706ff9197",
".git/objects/1c/adbd626018f4ae26095c1ebcf0657bd8df290c": "f1caebbd8d0793db3712608efdb74b7e",
".git/objects/20/eba344fbe0d297829d5ac2a43ceb28a351decf": "1ad0c904ccf12677a00d4a5bcc1c7780",
".git/objects/22/d310791f14b35ac62011d03a5bac5d8637dd87": "42b5dff8c159f0297fbe5be1c590b037",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/25/9186e7b8fbf0e3d8f282c7ce03fac0e8f1f6be": "00a67bfd37347aba0be4bf86af49500a",
".git/objects/25/e22496ea813eda0694d24d1763f10e07d3553f": "e111faf63400f909fab242ca7cec769a",
".git/objects/25/f21d6b83c3a99c0fd077d8de6c7af2b413a94d": "6e3bf0a1c4a838fb609c1223ca0e61ce",
".git/objects/26/79960f210cb95776f31660d3291a71653c4bef": "30c3e21c6e70222cf97d74297268b5a7",
".git/objects/28/ce421b8673ea3d758d03fc6e48dfa7875a1d15": "8e303570f8856ff24244ec59e589097b",
".git/objects/2a/61cb5fdc319a0d35b63bdb78b00e3509abdec5": "4b044213edf7a4df1b69df1834a95e81",
".git/objects/30/c02757838f65e29b5fa156b45bcc596d913b60": "6caa4510e51032e7352bcb69bd269b5c",
".git/objects/32/78dc1925f20ec2a66c7c0820df2006efa17b22": "91ef154c428b82de1b9a6429f42e2d63",
".git/objects/33/31d9290f04df89cea3fb794306a371fcca1cd9": "e54527b2478950463abbc6b22442144e",
".git/objects/35/85417efcde1e76bfa70188f772fd8bcb9391e5": "14797e404009234dca6aeb46b625ec7e",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/38/a8e0f620cf2d7c4221161f35d2f2d74e26a863": "c471e009c9b11bc5fea79dc2d0caf698",
".git/objects/3b/88221cd1eb69ab84fec98e3a354e5f085c6c1f": "f64e74c5a59b67f18b44b9569b81d7f5",
".git/objects/3c/aebc79037ed600e042d9031f0b258c1d0d9256": "2d4197172fcc377583338157d1b3c197",
".git/objects/3e/a8dd051023692ff2dcb5eaaa8110155071b866": "db3300e18408d59cbb15e681ddf9b11c",
".git/objects/3e/e6735f2b9253bc2701483f685304f156d9d0cc": "e12fc80ea4c79238c842485280e2539f",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/40/92b5dc8b78c60f8bfb1f89f68a9a5f3914a7dd": "c863758c2e219e1cf6f3dd2e49b874fd",
".git/objects/47/0ef4310ab999da8db50549022b57e5de7841cb": "b745166dd0e834d73b7b6f476a00ff17",
".git/objects/4a/0a1dcc85bc5f0a9434e61053fcfe02ecd5678c": "8199243f98639fcec8063a6abeb24dbe",
".git/objects/4d/2d7d41206c6b396d54e15668a2ebd13cb9a446": "f1849cd67988ecd6680949af8e00c09c",
".git/objects/4d/640d237badd108fcbb5de1968bafced4cc3774": "70ed4d7d06c77c719856c1a090a3d109",
".git/objects/4f/02e9875cb698379e68a23ba5d25625e0e2e4bc": "254bc336602c9480c293f5f1c64bb4c7",
".git/objects/4f/201f8d6f60d2bdbf2c1ddfebdb6ee8ac74c8c8": "5543df73739602b1ecbd27e66f511155",
".git/objects/4f/e68bfe4da61d73fe0f044bf17eec4abcf92fb6": "4911a70ecedfdb510fb0488c229a1648",
".git/objects/50/d97b1744e8d372fc3841e20473ea88566b3939": "c43be3f598078900a7174fec90d2a060",
".git/objects/53/0e66f73423cb06da5b0d889dfdec47d875d3e5": "e4c2d852351349497ae662e8f4570eff",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/58/a3c6f1609dd7e3e49a7845dc5718021ead725d": "491819b048c20bd1d9e7e084f869ea9b",
".git/objects/58/d369272f2f50f7c365635bf9bb808107ecadcd": "150d14ad6a99cabf918e177706c553aa",
".git/objects/5a/13bd5a18e506d22647433b1980295ce67bcebe": "50b077c2b68b737800ac0d99a322b746",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/5f/3c7279234eed4dd8e2997421f331033d2ff83a": "bdcbe75c08ae118627857c816fa436ae",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/62/6641630e79ad9e1c6865e133eceb72c575f088": "f728e5eeb286cdebfe5bead60f7704a7",
".git/objects/64/5116c20530a7bd227658a3c51e004a3f0aefab": "f10b5403684ce7848d8165b3d1d5bbbe",
".git/objects/64/f3fff48ecaacd645ce1864c5fea20c32abf81d": "65d66703c1303334e2caac0648908abc",
".git/objects/68/d9f4c0c9774eeff66dc9419d66aa56defc2102": "eb43c5d6d58d9692209205d85f41ba4c",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/71/256e9bc1b64492f563ebcc33066bf803129024": "e23003d81bcaa6ceaf8ec81f37753a09",
".git/objects/73/2e0fd26b3ba8318ae2402380109ff55e2ec1fc": "3bcc1edc7e6349ce821d4ec690cda35a",
".git/objects/75/843c9376d95af2666d604d238f0974eb445b15": "2701f46d4d9903c18a7aa742908e7c02",
".git/objects/79/effb4f52eace39423b26bb0c56af3bc2a988cd": "950557a02861c911173c44ee829226c5",
".git/objects/7a/8d3eafc351c5280e4c0e212980e21e7f7f5998": "87e323f7411a842635894a22b376fb8f",
".git/objects/7b/8163d868f0fe3fa720aa783034a97671472e3c": "cfde55d405c561bd0d81f9595f7a69c0",
".git/objects/7b/bc062bfddee773fbc1d849a351ef744ce99e72": "7514d9f4efeb584d977a2977c9b433c0",
".git/objects/83/4f5531a5956d64a6b822daa9fc7e9abf092ad2": "d6b5eea474dc7b503c286a3c91dea1e3",
".git/objects/86/bd23254b2ef7fc0812d67e7cb85444a51f262d": "d00d9d3884b6619955102333b3e4f6dc",
".git/objects/87/ed4ac39ac08053458f7da4e60460a62b2f1f58": "30fb3b5b07b3bdd4da68ed88f8dea0eb",
".git/objects/88/0db8c74dfa4582ed7dcc736553eb4d76761ea5": "0ba36e9e857b35b09e976812df52cc2a",
".git/objects/88/2bb14acfd75381e020ee36c9536ef8df6890c2": "03b58ea422630e7a38be8367734b4e64",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/44de511b405fb549b18412ee4ec49818b4c31a": "eae069cc72a25b7960c1b8fb4041015b",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/83837cfce6b3f4eb0dde78f2dd82b81dcff902": "2b95acb01ae750a7c683a17bc39ae8f8",
".git/objects/8e/484a0db8cfe39e5ae542c3718aef7cbcc51857": "fa06883e02aa8b21b05a89404806dfe6",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/95/2f565f6832bca719768f72c750af047b410571": "5cd3d5db8bff5b9c4f7c93ceee5b2ec4",
".git/objects/96/b4e65e269a14eda689daf68c137de0fd82b470": "9744ff6f5ec28d7152de274b84da291a",
".git/objects/97/bcfa1452b6ce959e23406a98919ce585403ea3": "b1662cf5bf60af09f06ea341c875d07c",
".git/objects/99/86d5c2b5dd9d9afbc1c2505e0d234faf6fe89b": "3ca8c3f5613761b1160aefe47762217a",
".git/objects/9e/48f237ff7df43da604be8d0ff194e35bef6e83": "0293a833d50650b30fc5b68ad3ef2e73",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/a8/ce08c853c37a06966b77de9a12e5459756c232": "f3b2f41d2f1f30fc9fe65294da651d5c",
".git/objects/ac/7e4cfee558a3d7e2f7e94621043d198623cc55": "b1c049934539bd25be81600c1888e2c7",
".git/objects/ac/ec0104b2ad2ce35cc27c41fce32756a1d9292d": "b0417b890d2e1efde900fd1165b22cd0",
".git/objects/ae/52a6d0c130c41189e21b59b940a0f17890bb51": "a385d9eff1fbee87cf4dbaf40a32069f",
".git/objects/b1/2dc29210c5286a8c5b1414995c49cddf879237": "f207d15de8e4e77b6de2deb958cac6b1",
".git/objects/b6/3d6b88ddcc9ff2e9680fc6e4bf2d0b45223172": "b9d901835d9621e0f2ef6b754857a884",
".git/objects/b7/38504d0bbafbc3f900f077266583f5b26eab9c": "87d094b4ba8d14a24a9e54d1c6a6ef3c",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bf/8567ac3d3f584d5e0df14cdf65a773ecf33a5f": "1e3fd257c07e47602d55576ad78efd1e",
".git/objects/c5/d575601f21359f7ad19c2a1522b13191fb3940": "82917b5e90061e76a9c9d71d15ade507",
".git/objects/c7/9f88ad3195dcf7a81e620a1ac1ce3c1275c4fd": "1f47d4d60156dbbe306da0d6f6d23bab",
".git/objects/ca/39d4bf2266373bb53e8955f068d6ca1e51a7a6": "c039a7712b74d4fa272b5edb073714fc",
".git/objects/cd/8eba521b6f385704f2a6023646dcb67d2d79b4": "ca3140948c0df9d8fcb709c791f05294",
".git/objects/cd/98b881bcf679f6b5349f841db1bcf6ccd8a5cf": "8e408f39a4b3f5699992242bf54c3877",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/df4e0e00f55ad0a6d64ccb0a5dacf9e546de9b": "39b835f7ed54486564f56370a1accf3d",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/a0988864413e66eb713db776c6c3734357cfd5": "b4d8ffe4e702c8d4a374f4270c6bdc49",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/dc/37b8e1a54edfc3c7c796a83751033bcd06bb98": "afec5cb3ddd45b178cb42b8b090a39f6",
".git/objects/e3/66203ce212e91808cfa6d4f977106e1e96b347": "c597200d20c05afa11ee0ac05a0ef0b4",
".git/objects/e3/aac61e8047996d44632a20c8ba0327969654a6": "2ad158043292f70588a374ee1c3ba10a",
".git/objects/e4/9ebf8e8ccaef681c5041bdca0f081a0152c0ef": "4de9e165ca4b37fe9a5eddf2eb66b68a",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/ea/278d5a5539038bc106ca72b23b86c5744c4cf3": "38098655f01fb70f0fb5cb0cc0a59bfc",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/f4/231891c1746f2281edf2b72462fbc72cc2f49e": "f4267c6fe2a4dd019549f302506962ed",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/f8/e4275d62676436b65f80da25116226bff61a21": "076b50d9b5ad2ad197c5eb93a067ed80",
".git/objects/fc/00cc38f9d7dd3bff9cc1cbf422ff653df0d729": "0952cf0a8ca4d0f27c1810a66bbbce57",
".git/objects/fc/10a809727accdb4f8c795b9125458c59050f79": "391f6243f5ed1b7ac853cc46dd337313",
".git/refs/heads/main": "c448eaa860b0f4178e5e106d648ed818",
".git/refs/remotes/origin/main": "b02065b6b76dce41235872798c05cfda",
"assets/AssetManifest.bin": "a417dbe821d9a6236351825982a91ce8",
"assets/AssetManifest.bin.json": "cc42e039203dc7e056ff0ad3e004542e",
"assets/AssetManifest.json": "e92272443f42078bd96d6a6bf15a6443",
"assets/assets/icon/api-svgrepo-com.svg": "f511f88fdabaa0513d162a8952f2050d",
"assets/assets/icon/bloc-svgrepo-com.svg": "61c05bdac9cc880dd2d5da94ce89f2fc",
"assets/assets/icon/dart-svgrepo-com.svg": "77736b70355db3b992d712891749acd5",
"assets/assets/icon/figma-svgrepo-com.svg": "e4d477f4b50ca750010cc10c5a5bbb53",
"assets/assets/icon/firebase-svgrepo-com.svg": "7f1bf2795e067daf4ac3b42a2a140496",
"assets/assets/icon/flutter-svgrepo-com.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/icon/git-svgrepo-com.svg": "395d8c6917b47ac4dcde3600673f6519",
"assets/assets/icon/postman-icon-svgrepo-com.svg": "fbfb57a181ce251926d686d12e6cee5a",
"assets/assets/icon/raw.png": "d9e0cd0640d3b7dfcc6c2af37dd9d9cb",
"assets/assets/image/chateo2.png": "902e2c4c0872d8de3cf8f941b3b5da16",
"assets/assets/image/eco%2520eats.png": "67362337934a6b4220d25879b291a27a",
"assets/assets/image/Group%25206863.png": "1ab46414bf4257d51b1ab871f7cdaa08",
"assets/assets/image/instagram.png": "9e2d4bc4cf4f0f7c850b723ca01d56db",
"assets/assets/image/laptop.png": "0e2b14e7fcb449cf448a36c0cb0ccb9d",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "4b79bffdb0311f8513a63713eb3dfb13",
"assets/NOTICES": "e253198a559cbe9cf2c7aaf0c7947b48",
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
"flutter_bootstrap.js": "da08a6f1bd5c455fd17311171922e379",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "f91f2a8fb12c5914ddd5375fdd9ba875",
"/": "f91f2a8fb12c5914ddd5375fdd9ba875",
"main.dart.js": "3a520f172d2c01fa4afe14c9407cc917",
"manifest.json": "0640a5a0ce153bc2b3234ba05648de82",
"README.md": "3d4a0b327baecca99519b9e02d0b119b",
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
