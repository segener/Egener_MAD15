package com.example.sarahegener.project3;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;

public class LightingActivity extends Activity {

    public void display(View view){
        TextView text=(TextView)findViewById(R.id.light_text);
        text.setText(" smaller presentation of lights can still be attractive, and more appropriate in the 'season of giving'. Saving electricity is also a way of giving, since conserving resources benefits everyone. Also, it's simply a waste of energy to leave the holiday lights on at night after everyone's gone to sleep.");
    }

    public void led(View view){
        TextView text=(TextView)findViewById(R.id.light_text);
        text.setText("Light Emitting Diode (LED) holiday lights use up to 95% less energy than larger, traditional holiday bulbs and last up to 100,000 hours when used indoors. LED holiday lights use .04 watts per bulb, 10 times less than mini bulbs and 100 times less than traditional holiday bulbs. Over a 30-day period, lighting 500 traditional holiday lights will cost you about $18.00 while the same number of LED lights costs only $0.19. As an added bonus, if one of the LED lights burns out the rest of the strand will stay lit.");
    }

    public void mini(View view){
        TextView text=(TextView)findViewById(R.id.light_text);
        text.setText("A 100-light string uses only 40 watts. If you're buying a new set of lights, compare based on equal 'lighted lengths'. Some higher priced brands have 100 mini-lights for only 8 1/2 feet of length, while some 100 mini-light strings cover up to 40 feet in length.");
    }

    RatingBar ratingBar;
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lighting);

        ratingBar=(RatingBar)findViewById(R.id.ratingBar);

        // Set ChangeListener to Rating Bar
        ratingBar.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBar, float rating,
                                        boolean fromUser) {

                Toast.makeText(getApplicationContext(), "Thank you for your rating!  : " + String.valueOf(rating), Toast.LENGTH_LONG).show();

            }
        });

    }
}
