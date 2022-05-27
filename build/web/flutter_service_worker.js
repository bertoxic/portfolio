'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "dade89b84787e6c9c7772af6be80ea69",
"assets/assets/images/africa.jpg": "cf16620cf8ce92ae97251620db2805cc",
"assets/assets/images/africa.png": "ee64c7094f6947432f58d99e3e055661",
"assets/assets/images/animals.jpg": "e4cb6bc18f8bb46fb99a6bb817fd22ae",
"assets/assets/images/antarctica.jpg": "ab48effddda9c9a700472928923635e9",
"assets/assets/images/asia.jpg": "8198867d9bc6f03eccae111607af661f",
"assets/assets/images/australia.jpg": "273f799d44c34f1d76f8d5b62d11cfda",
"assets/assets/images/background.png": "17ff840db9b110cc29d5474c95616492",
"assets/assets/images/background1.jpg": "32e0f53aa044b812fe98c92d576af6bf",
"assets/assets/images/cover.jpg": "869eaf64cf09b2261c2e3df98b84f4b7",
"assets/assets/images/europe.jpg": "b371eb082f44c403efcd819b44ca1cb2",
"assets/assets/images/face.jpg": "dd26499740c6a55596cb0e6eb4000e76",
"assets/assets/images/iconpic/adobe.png": "b5433b40b7b42fc2beb7e71552ba314a",
"assets/assets/images/iconpic/clipstudio.png": "39ac005025fd4348a51116c68acfbbcd",
"assets/assets/images/iconpic/daerbird.png": "cd7f4c0e915e85730d2cd213336de656",
"assets/assets/images/iconpic/dart.png": "3921adbc9198e069093cc16509bbbc98",
"assets/assets/images/iconpic/figma.png": "aa57ba01c1ebe79a7535278690d7f987",
"assets/assets/images/iconpic/firebase.png": "30a4e1385a550ef0ff79807e0323b189",
"assets/assets/images/iconpic/flutter.png": "66a7eddb026371b8c86fa2e93208397d",
"assets/assets/images/iconpic/javaicon.png": "f402fee0e95ea4eab42fbb4e410bff9d",
"assets/assets/images/iconpic/phone.png": "4c7ccd15a0b3e49deb6865f458ccab94",
"assets/assets/images/iconpic/phonehand.png": "f03e1d8b5c9b87b00c7c5b68c31191ff",
"assets/assets/images/iconpic/pngwing.com%2520(9).png": "f7c15484d2489fec870bdda32e8d5e4c",
"assets/assets/images/iconpic/tube.png": "b67510c3f40f73e88e1d70682a8884bf",
"assets/assets/images/musicapp.jpg": "7631be6e3deddab26efae59f867f23fc",
"assets/assets/images/nicorati.jpg": "c2d2b2db5bb93cf4c6a2d7bfa72a6abb",
"assets/assets/images/north_america.jpg": "409f0d15450081767d90378902fbfa75",
"assets/assets/images/north_america.png": "da5554b286eef88ea50f2b0acee64008",
"assets/assets/images/photography.jpeg": "f8128276fb9428e2c186668c68f78b01",
"assets/assets/images/picprofile.jpg": "6e576929e9f90c515a8138437c862b13",
"assets/assets/images/picprofile2.jpg": "195f0fcdde3b545802d73e1e3a253159",
"assets/assets/images/profileme11jpg.jpg": "5c2230b839d5ffb0897d8810e85df697",
"assets/assets/images/signuppage.png": "35649b0cb397f4ea799ef49fad1328d7",
"assets/assets/images/south_america.jpg": "2921fde26b5db9d252e558d0d3f779c4",
"assets/assets/images/test1.jpeg": "3f2ee2bc9a1806efd720e6c5d43bfcbe",
"assets/assets/images/test2.jpeg": "2c9f3fdbefe2b1f60152e524d943e594",
"assets/assets/images/test3.jpeg": "368035a9e479ae0b227e309ba7d6527c",
"assets/assets/images/trekking.jpg": "f0375445dcd8304cd7601266790387fb",
"assets/FontManifest.json": "c49f060c2f911f6f2a8e102e66602c00",
"assets/fonts/Daughter%2520of%2520Fortune.ttf": "8f640c7581ef29c5f9f89c8487374876",
"assets/fonts/Electrolize-Regular.ttf": "1be3e0aaeb2bbd1985615a49da7f2eaf",
"assets/fonts/MantrapPersonalUse-Regular.otf": "d8d8f3c296dd4c83693c470e964c6c8f",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/fonts/Montserrat-Regular.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/NOTICES": "d7a17fc3a05704a71d5c663a657e6f65",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1722d5cf2c7855862f68edb85e31f88",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "613e4cc1af0eb5148b8ce409ad35446d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dd3c4233029270506ecc994d67785a37",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "9e9f48965839bb90bcd4939c81e27a6b",
"/": "9e9f48965839bb90bcd4939c81e27a6b",
"main.dart.js": "b9c573554be69d02d4b9055e4598ed3f",
"manifest.json": "9432f3169231df869a380175565e0ecc",
"version.json": "9094aacdae789dccd67fa32109ff1a18"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
