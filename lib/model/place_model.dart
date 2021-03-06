class PlaceInfo {
  final String location, image, name, desc, category;
  final double lat, lon;

  PlaceInfo({
    required this.location,
    required this.image,
    required this.name,
    required this.desc,
    required this.category,
    required this.lat,
    required this.lon
  });
}

List places = [
  PlaceInfo(
    image: "assets/images/lacastle.jpg",
    location: "Iloilo City Proper, Iloilo City, Iloilo",
    name: "La Castle Hotel",
    category: "Hotel",
    desc: "The Castle Hotel was once an old heritage mansion before it was converted into what it is today. Considered as one of Iloilo’s boutique hotels, the Castle Hotel exudes a medieval ambiance and an old charm to it. It is approx. a 5min walk from The Atrium Mall, Gaisano Metro Mall, Museo Iloilo, Department of Tourism Regional Office, and the Iloilo Provincial Capitol.",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/tatoys.jpeg",
    location: "Villa, Iloilo city",
    name: "Tatoy's Manokan and Seafoods",
    category: "Resto",
    desc: "Tatoys Manokan and Seafood is one of the top ten best Restaurants in Iloilo City. It is situated in the famous Villa Beach area about 8 Kilometres away from the business centre. This restaurant has two dining areas, one is an air conditioned hall used for bigger events and the other one is several native huts directly on the beach giving all that tropical experience. Tatoys Manokan is an old restaurant serving the Native Filipino Dishes with fresh seafood and it is also known to have one of the best Grilled Chicken in town.",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/cubix.jpg",
    location: "Benigno Aquino Ave, Mandurriao, Iloilo City, 5000 Iloilo",
    name: "Cubixpark",
    category: "Park",
    desc: "",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/yakimix.jpeg",
    location: "Benigno Aquino Ave., Diversion Road, Time Square, Gaisano Iloilo City Center, Iloilo City",
    name: "Yakimix",
    category: "Resto",
    desc: "This restaurant offers you to try good marinated meat, sushi and seafood. Most guests mention that the staff is appealing. Nice service is something clients appreciate here. When you enter this place, you will notice the peaceful ambiance. YakiMix is one of those places in Iloilo City where you can have Korean barbeque with a touch of other countries' dishes to eat all you can with your group. This place offers a variety of food from other countries, ranging from American, Korean, Filipino, Japanese and Chinese.",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "",
    location: "",
    name: "",
    category: "",
    desc: "",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/onbun.jpeg",
    location: "Ledesma St. Iloilo City Proper, Iloilo City, 5000 Iloilo",
    name: "Ong Bun Pension House",
    category: "Hotel",
    desc: "Arguably, the most popular accommodation in Iloilo among backpackers and solo travelers on a budget. Ong Bun Pension House offers single fan rooms for as low as PHP330 per night and single air-con rooms from PHP385 per night. It’s not the most glamorous place to stay in the city but it’s a cheap option for those who are looking for very basic rooms and a bed to crash for the night.",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/richmonde.jpeg",
    location: "Megaworld Boulevard corner Enterprise Road Iloilo Business Park, Mandurriao, Iloilo City, 5000 Iloilo",
    name: "Richmonde Hotel",
    category: "Hotel",
    desc: "Hotel; Boasting a prestigious address, Richmonde Hotel Iloilo offers guests not just convenience but also exceptional accommodation in the Philippines’ City of Love. With a contemporary design and a calming ambience, Richmonde Hotel in Iloilo rivals the quality of service and facilities of 5-star brands yet offers the best value for money. Expect well-appointed rooms and first-class amenities during your stay. In accordance with Iloilo City’s anti-smoking ordinance 2006-150, Richmonde is a smoke-free hotel.",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/ramboys.jpeg",
    location: "Benigno Aquino Ave., Diversion Road, Mandurriao Molo, SM Southpoint, SM City Iloilo Iloilo City",
    name: "Ramboy's",
    category: "Resto",
    desc: "With over 18 branches scattered nationwide, Ramboy’s is ready to serve the best of Aklan on your plates. Iloilo was the first place where Ramboy’s chained out. There are 3 branches of Ramboy’s around the city, SM Southpoint, Diversion Road and Molo. Ramboy’s serves a crispy-licious Liempo and best-tasting Lechon manok that will surely make you drool. The slow charcoal roasting of the Liempo makes the skin of Liempo crunchy as a chicharon. It comes with Ramboy’s own recipe of flavorful gravy sauce that makes the dish even more appetizing. Aside from their specialty, they also offer other Filipino native cuisines like Sinigang, Pancit varieties such as Bihon Guisado, Sotanghon Guisado and Canton Guisado, Chopsuey, Pinkabet and much more mouthwatering goodness!",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/vikings.jpeg",
    location: "Southpoint, SM City Mandurriao, Iloilo City",
    name: "Vikings",
    category: "Resto",
    desc: "Boasting of being the largest buffet restaurant in the Philippines, Vikings has redefined the standards of dining in class and style. Featuring massive and elegantly themed structures, each of the 11 Vikings branches will leave you in awe of its lavish architecture.",
    lat: 0,
    lon: 0, 
  ),
  PlaceInfo(
    image: "assets/images/sunburst.jpeg",
    location: "Benigno Aquino Ave, Mandurriao, Iloilo City, 5000 Iloilo",
    name: "Sunburst Park",
    category: "Park",
    desc: "",
    lat: 0,
    lon: 0, 
  ),  
  PlaceInfo(
    image: "assets/images/timesquare.jpeg",
    location: "Gaisano Iloilo City Center, Benigno Aquino Ave, Mandurriao, Iloilo City, Iloilo",
    name: "City Time Square",
    category: "Park",
    desc: "",
    lat: 0,
    lon: 0, 
  ),  
  PlaceInfo(
    image: "assets/images/giligans.jpeg",
    location: "Southpoit, SM City Mandurriao, Iloilo City",
    name: "Giligan's",
    category: "Resto",
    desc: "Giligan’s Bistro lets you experience a whole new level of trip without sailing in the ocean – food trip in their marine-themed restaurant. Whether you came here solo, with friends or with family, you will definitely enjoy a different kind of voyage.",
    lat: 0,
    lon: 0, 
  ),  
];
