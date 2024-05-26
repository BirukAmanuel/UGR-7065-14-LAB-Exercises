package com.example.counterapp

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private var counter = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val textViewCounter: TextView = findViewById(R.id.textViewCounter)
        val buttonIncrease: Button = findViewById(R.id.buttonIncrease)
        val buttonDecrease: Button = findViewById(R.id.buttonDecrease)
        val buttonReset: Button = findViewById(R.id.buttonReset)

        buttonIncrease.setOnClickListener {
            counter++
            textViewCounter.text = counter.toString()
        }

        buttonDecrease.setOnClickListener {
            counter--
            textViewCounter.text = counter.toString()
        }

        buttonReset.setOnClickListener {
            counter = 0
            textViewCounter.text = counter.toString()
        }
    }
}
