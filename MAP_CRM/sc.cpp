////
////  sc.cpp
////  MAP_CRM
////
////  Created by User on 2018/02/13.
////  Copyright © 2018 Tribal Nexus. All rights reserved.
////
//
//#include "sc.hpp"
//for (int i = 0; i < ticketCategoriesArray.length(); i++) {
//    Category ticketCategory = new Category(Parcel.obtain());
//    ticketCategory.setCanonicalKey(ticketCategoriesArray.getJSONObject(i).getInt("ck"));
//    ticketCategory.setCanonicalValue(ticketCategoriesArray.getJSONObject(i).getString("cv"));
//
//    JSONArray ticketSubCategoriesArray = ticketCategoriesArray.getJSONObject(i).getJSONArray("subCategories");
//
//    ArrayList<SubCategory> ticketSubCategories = new ArrayList<>();
//
//    for (int j = 0; j < ticketSubCategoriesArray.length(); j++) {
//        SubCategory ticketSubCategory = new SubCategory(Parcel.obtain());
//        ticketSubCategory.setCanonicalKey(ticketSubCategoriesArray.getJSONObject(j).getInt("ck"));
//        ticketSubCategory.setCanonicalValue(ticketSubCategoriesArray.getJSONObject(j).getString("cv"));
//
//        JSONArray ticketOutcomesArray = ticketCategoriesArray.getJSONObject(i).getJSONArray("subCategories").getJSONObject(j).getJSONArray("outcomes");
//
//        ArrayList<Outcome> ticketOutcomes = new ArrayList<>();
//
//
//        for (int k = 0; k < ticketOutcomesArray.length(); k++) {
//            Outcome ticketOutcome = new Outcome(Parcel.obtain());
//            ticketOutcome.setCanonicalKey(ticketOutcomesArray.getJSONObject(k).getInt("ck"));
//            ticketOutcome.setCanonicalValue(ticketOutcomesArray.getJSONObject(k).getString("cv"));
//            JSONArray ticketStatusArray = ticketCategoriesArray.getJSONObject(i).getJSONArray("subCategories").getJSONObject(j).getJSONArray("outcomes").getJSONObject(k).getJSONArray("statuses");
//            ArrayList<Status> statuses = new ArrayList<>();
//            for (int l = 0; l < ticketStatusArray.length(); l++) {
//                if (ticketStatusArray.getJSONObject(l).length() > 0) {
//                    if (ticketStatusArray.getJSONObject(l).getInt("ck") == 2) {
//                        ticketOutcomes.add(ticketOutcome);
//
//
//                    }
//                }
//
//            }
//
//
//        }
//        if(ticketOutcomes.size()>0)
//        {
//            ticketSubCategory.setOutcomes(ticketOutcomes);
//            ticketSubCategories.add(ticketSubCategory);
//        }
//
//
//
//    }
//    if(ticketSubCategories.size()>0)
//    {
//        ticketCategory.setSubcategories(ticketSubCategories);
//        ticketCategories.add(ticketCategory);
//    }
//
//    getCasesInteractions();
//
//
//}

