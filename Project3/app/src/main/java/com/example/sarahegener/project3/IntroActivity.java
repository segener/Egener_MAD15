package com.example.sarahegener.project3;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class IntroActivity extends AppCompatActivity {

    public void findPurchase(View view){
        Intent intent = new Intent(this, PurchaseActivity.class);
        startActivity(intent);
    }

    public void findTree(View view){
        Intent intent = new Intent(this, GreenTreeActivity.class);
        startActivity(intent);
    }

    public void findLights(View view){
        Intent intent = new Intent(this, LightingActivity.class);
        startActivity(intent);
    }

    public void findWrapping(View view){
        Intent intent = new Intent(this, WrappingActivity.class);
        startActivity(intent);
    }

    public void findRecycling(View view){
        Intent intent = new Intent(this, RecycleActivity.class);
        startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_intro);
    }
}
