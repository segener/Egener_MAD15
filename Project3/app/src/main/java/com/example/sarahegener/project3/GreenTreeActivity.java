package com.example.sarahegener.project3;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;

public class GreenTreeActivity extends Activity  {

    public void repot(View view){
        TextView text=(TextView)findViewById(R.id.tree_text);
        text.setText("If you buy a small tree in a large pot, you may be able to reuse the tree for 2- 3 years without having to plant or re-pot the tree. But if your tree becomes root-bound, you can replant it in a larger pot for several years extended use.");
    }

    public void replant(View view){
        TextView text=(TextView)findViewById(R.id.tree_text);
        text.setText("If you have the space, of course, replanting the tree outdoors is an option. Be sure to anticipate the full-grown size of the tree, and avoid planting near foundations or underground services.Many communities now have free chipping service for trees. This is useful since the chips are used as mulch for municipal landscaping or sold at low cost to gardeners. This chipped material makes an excellent mulch for your shrub beds and garden pathways. ");
    }

    public void myth(View view){
        TextView text=(TextView)findViewById(R.id.tree_text);
        text.setText("Although plastic Christmas trees are reusable from year to year, real trees are the more sustainable choice. Plastic trees are made of petroleum products (PVC), and use up resources in both the manufacture and shipping. While artificial trees theoretically last forever, research shows that they are typically discarded when repeated use makes them less attractive. Discarded artificial trees are then sent to landfills, where their plastic content makes them last forever.");
    }

    RatingBar ratingBar;
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_green_tree);

        ratingBar=(RatingBar)findViewById(R.id.ratingBar);

        // Set ChangeListener to Rating Bar
        ratingBar.setOnRatingBarChangeListener(new OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBar, float rating,
                                        boolean fromUser) {

                Toast.makeText(getApplicationContext(), "Thank you for your rating!  : " + String.valueOf(rating), Toast.LENGTH_LONG).show();

            }
        });

    }
}
