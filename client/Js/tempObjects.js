const products = {
  baseProduct: {
    id: 0,
    name: "",
    price: 45.99,
    allergens: [
      /*list of strings*/
    ],
    description: "",
    ingredients: [
      /*list of strings*/
    ],
    flavorProfile: [
      /*list of strings*/
    ],
    servingSize: "Serves",
    shelfLife: "3 days refrigerated",
    storageInstructions: "Store in an airtight container in the refrigerator",
    customizationOptions: ["Choice of flavor", "Custom decoration themes"],
    socialProof: { rating: 4.8, reviews: 25, bestSeller: true },
    imageUrl: "",
    relatedProducts: [5, 9], // IDs of example Cheesecakes
    availability: true,
  },

  specialties: [
    {
      id: 1,
      name: "Cheesecake cookies",
      price: 45.99,
      allergens: ["Dairy", "Eggs"],
      description: "",
      ingredients: ["", ""],
      flavorProfile: ["smooth", ""],
      servingSize: "Serves",
      shelfLife: "3 days refrigerated",
      storageInstructions: "Store in an airtight container in the refrigerator",
      customizationOptions: ["Choice of flavor", "Custom decoration themes"],
      socialProof: { rating: 4.8, reviews: 25, bestSeller: true },
      relatedProducts: [5, 9], // IDs of example Cheesecakes
      availability: true,
    },
  ],
  cupcakes: [],
  cakes: [],
  cookies: [],
  cheesecakes: [],
  //pies will be a sold product but not focused
  pies: [],
};
