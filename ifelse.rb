def location_decicder(asian,healthy,halal,cheap)
  restaurants = ["Hei Nan Lei Cha", "Rock Road","Go Fun Kee","Ono Poke","SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall","Chong Chon Green Noodles","Boulevard Restaurant","Sharing Too @ CityOne","Subway @ Plaza Merdeka","Earthlings Coffee Workshop HQ","Howdy's Grillhouse","McDonalds @ Padungan","Sukha Cafe","My Restaurant","The Granary"]


  if asian==true
    restaurants = ["Hei Nan Lei Cha", "Rock Road","Go Fun Kee","Ono Poke","SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall","Chong Chon Green Noodles","Boulevard Restaurant"]

    if healthy==true
        restaurants = ["Hei Nan Lei Cha", "Rock Road","Go Fun Kee","Ono Poke"]
        if halal == true
          restaurants = ["Hei Nan Lei Cha", "Rock Road"]
          if cheap==true
            restaurants = ["Hei Nan Lei Cha"]
          else
              restaurants = ["Rock Road"]
          end
        else
          restaurants = ["Go Fun Kee","Ono Poke"]
          if cheap==true
            restaurants = ["Go Fun Kee"]
          else
              restaurants = ["Ono Poke"]
          end
        end
    else
      restaurants = ["SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall","Chong Chon Green Noodles","Boulevard Restaurant"]
      if halal == true
        restaurants = ["SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall"]
        if cheap==true
          restaurants = ["SUUKEE The Original Hainanese Chicken Rice @ Icom Square"]
        else
            restaurants = ["Seoul Garden Vivacity Megamall"]
        end
      else
        restaurants = ["Chong Chon Green Noodles","Boulevard Restaurant"]
        if cheap==true
          restaurants = ["Chong Chon Green Noodles"]
        else
            restaurants = ["Boulevard Restaurant"]
        end
      end
    end
  else
    restaurants = ["Sharing Too @ CityOne","Subway @ Plaza Merdeka","Earthlings Coffee Workshop HQ","Howdy's Grillhouse","McDonalds @ Padungan","Sukha Cafe","My Restaurant","The Granary"]
    if healthy==true
        restaurants = ["Sharing Too @ CityOne","Subway @ Plaza Merdeka","Earthlings Coffee Workshop HQ","Howdy's Grillhouse"]
        if halal == true
          restaurants = ["Sharing Too @ CityOne","Subway @ Plaza Merdeka"]
          if cheap==true
            restaurants = ["Sharing Too @ CityOne"]
          else
              restaurants = ["Subway @ Plaza Merdeka"]
          end
        else
          restaurants = ["Earthlings Coffee Workshop HQ","Howdy's Grillhouse"]
          if cheap==true
            restaurants = ["Earthlings Coffee Workshop HQ"]
          else
              restaurants = ["Howdy's Grillhouse"]
          end
        end
    else
      restaurants = ["McDonalds @ Padungan","Sukha Cafe","My Restaurant","The Granary"]
      if halal == true
        restaurants = ["McDonalds @ Padungan","Sukha Cafe"]
        if cheap==true
          restaurants = ["McDonalds @ Padungan"]
        else
            restaurants = ["Sukha Cafe"]
        end
      else
        restaurants = ["My Restaurant","The Granary"]
        if cheap==true
          restaurants = ["My Restaurant"]
        else
            restaurants = ["The Granary"]
        end
      end
    end
  end
return restaurants
end
