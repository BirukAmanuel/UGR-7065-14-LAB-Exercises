package com.example.compose
import com.example.compose.ui.theme.ComposeTheme
import android.os.Bundle
import androidx.compose.runtime.Composable
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Surface
import androidx.compose.runtime.*
import androidx.compose.material3.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            ComposeTheme {
                var number by remember {
                    mutableStateOf(0)
                }
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    Column (
                        modifier = Modifier.fillMaxSize(),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center
                    ){
                        TextResult(
                            "$number"
                        )
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement =Arrangement.SpaceAround
                        ){
                            MyButton("-") {number--}
                            MyButton("Clear") {
                                number = 0
                            }
                            MyButton("+" ){number++}


                        }
                    }
                }
            }
        }
    }
    @Composable
    private fun TextResult(s:String){
        Text(text = s,
            fontSize = 30.sp,
            fontWeight = FontWeight.Bold
        )
    }

    @Composable
    private fun MyButton(text: String, function: () -> Unit,){
        Button(onClick = function){
            Text(text = text)
        }
    }
}