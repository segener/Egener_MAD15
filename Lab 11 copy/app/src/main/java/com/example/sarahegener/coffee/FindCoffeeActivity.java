package com.example.sarahegener.coffee;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

public class FindCoffeeActivity extends AppCompatActivity {

    public void findOrder (View view){
        TextView feeling = (TextView) findViewById(R.id.pizzaText);
        Spinner pizzaSpinner = (Spinner) findViewById(R.id.spinner);
        String pizzaValue = String.valueOf(pizzaSpinner.getSelectedItem());
        EditText name = (EditText) findViewById(R.id.name_editText);
        String nameValue = name.getText().toString();
        feeling.setText(nameValue + " is a " + pizzaValue + " pizza");
    }

    private CoffeeShop myCoffeeShop = new CoffeeShop();

    public void findCoffee(View view){
        Spinner crowdSpinner = (Spinner)findViewById(R.id.spinner);
        Integer crowd = crowdSpinner.getSelectedItemPosition();
        myCoffeeShop.setCoffeeShop(crowd);
        String suggestedCoffeeShop = myCoffeeShop.getCoffeeShop();
        String suggestedCoffeeShopURL = myCoffeeShop.getCoffeeShopURL();
        System.out.println(suggestedCoffeeShop);
        System.out.println(suggestedCoffeeShopURL);

        //create an intent
        Intent intent = new Intent(this, ReceiveCoffeeActivity.class);

        //pass data
        intent.putExtra("coffeeShopName", suggestedCoffeeShop);
        intent.putExtra("coffeeShopURL", suggestedCoffeeShopURL);

        //start the intent
        startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_coffee);
    }
}
