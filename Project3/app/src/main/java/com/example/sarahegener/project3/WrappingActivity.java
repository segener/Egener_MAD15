package com.example.sarahegener.project3;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;

public class WrappingActivity extends Activity {

    public void packaging(View view){
        TextView text=(TextView)findViewById(R.id.wrapping_text);
        text.setText("If you are interested in buying entirely new rolls of wrapping and want to go completely eco-friendly, choose wrapping paper made using fibers such as hemp, or paper marked as 100% recycled content.");
    }

    public void alternatives(View view){
        TextView text=(TextView)findViewById(R.id.wrapping_text);
        text.setText("There are many alternative options to buying new, eco-friendly wrapping, which are cost-free solutions right in your home. Gift bags can be made using fabric scraps, or wrapping can be made using comic strips from the paper, old calendars, maps, posters and more.");
    }

    public void avoid(View view){
        TextView text=(TextView)findViewById(R.id.wrapping_text);
        text.setText("You can do a beautifully wrapping job for your gifts without having to use metallic wrapping paper. This kind of 'paper' is difficult to recycle and it has no value for use as mulch since there are heavy metals used in the foil paper. Foil gift wrap is also harder to reuse, since it wrinkles and creases easily when the gift is being unwrapped.");
    }

    RatingBar ratingBar;
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_wrapping);

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
