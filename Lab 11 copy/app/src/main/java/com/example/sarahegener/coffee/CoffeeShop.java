package com.example.sarahegener.coffee;

/**
 * Created by sarahegener on 11/17/15.
 */
public class CoffeeShop {
    private String coffeeShop;
    private String coffeeShopURL;

    private void setCoffeeInfo(Integer coffeeCrowd){
        switch (coffeeCrowd){
            case 1:
                coffeeShop="Pizzeria Locale";
                coffeeShopURL="https://www.localeboulder.com";
                break;
            case 0:
                coffeeShop="Old Chicago";
                coffeeShopURL="https://www.oldchicago.com";
                break;
            case 2:
                coffeeShop="Beau Jo's";
                coffeeShopURL="https://beaujos.com";
                break;
            case 4:
                coffeeShop="Domino's";
                coffeeShopURL="http://www.dominos.com";
                break;
            case 3:
                coffeeShop="Cosmo's";
                coffeeShopURL="http://www.cosmospizza.com";
                break;
            case 5:
                coffeeShop="Boss Lady";
                coffeeShopURL="http://www.bossladypizza.com";
                break;
            default:
                coffeeShop="none";
                coffeeShopURL="https://www.google.com/search?q=boulder+pizza+shops&ie=utf-8&oe=utf-8";
        }
    }
    public void setCoffeeShop(Integer coffeeCrowd){setCoffeeInfo(coffeeCrowd);}
    public void setCoffeeShopURL(Integer coffeeCrowd){setCoffeeInfo(coffeeCrowd);}
    public String getCoffeeShop(){return coffeeShop;}
    public String getCoffeeShopURL(){return coffeeShopURL;}
}

