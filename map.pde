
//Initial Game Map

boolean [][]sand = {{false,true,false,false,false,false,false,true,false},
                   {true,true,false,true,true,true,true,true,true},
                   {true,false,true,true,false,false,true,false,true},  
                   {false,true,false,true,true,true,true,false,true},  
                   {true,false,true,true,false,true,true,true,false}, 
                   {false,true,true,false,false,true,false,true,false}};
                   
                   
                  
boolean [][]rock = {{false,false,true,false,true,false,true,false,false},  
                    {false,false,true,false,false,false,false,false,false},  
                    {false,false,false,false,true,false,false,true,false},
                    {true,false,false,false,false,false,false,true,false},
                    {false,true,false,false,true,false,false,false,false},
                    {false,false,false,true,false,false,true,false,false}};
                    
                    
boolean [][]diamond ={{false,false,false,true,false,true,false,false,true},
                      {false,false,false,false,false,false,false,false,false}, 
                      {false,true,false,false,false,true,false,false,false}, 
                      {false,false,true,false,false,false,false,false,false}, 
                      {false,false,false,false,false,false,false,false,true},
                      {true,false,false,false,true,false,false,false,false}};
