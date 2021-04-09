import Html
import Html.Attributes as HA

myShapes model =
    case model.state of
        MainMenu  ->
            [ backgroundImg 
            , group [
              text "Trigonometry" 
                |> bold
                |> customFont "Rockwell"
                |> filled red
                |> move(-38,65)
             , text "Transformation"
                |> bold 
                |> customFont "Rockwell"
                |> filled red 
                |> move (-45, 50)
             , text "Visualizer"
                |> bold 
                |> customFont "Rockwell"
                |> filled red 
                |> move (-30, 35)
             , playButton |> notifyTap Play
             , instructionButton |> notifyTap MI1
             , infoButton |> notifyTap ML1
             ] |> move (0, -20)
            ] 
        StartPage  ->
            [ startPage model
            ]
        B1  ->
            [ bigGraph model 
            , basicA model
            , gamePage model
            ]
        B2  ->
            [ bigGraph model 
            , basicK model 
            , gamePage model
            ]
        B3  ->
            [ bigGraph model
            , basicC model
            , gamePage model
            ]
        B4  ->
            [ bigGraph model
            , basicD model
            , gamePage model
            ]
        B5  ->
            [ bigGraph model 
            , basicA model
            , gamePage model
            ]
        M1  ->
            [ bigGraph model
            , mediumAC model
            , gamePage model
            ]
        M2  ->
            [ bigGraph model
            , mediumAD model
            , gamePage model
            ]
        M3  ->
            [ bigGraph model
            , mediumKD model
            , gamePage model
            ]
        M4  ->
            [ bigGraph model
            , mediumCD model
            , gamePage model
            ]
        M5  ->
            [ bigGraph model
            , mediumAC model
            , gamePage model
            ]
        H1  ->
            [ bigGraph model
            , hardGameACD model
            , gamePage model
            ]
        H2  ->
            [ bigGraph model
            , hardGameKCD model
            , gamePage model
            ]
        H3  ->
            [ bigGraph model
            , hardGameACD model
            , gamePage model
            ]
        H4  ->
            [ bigGraph model
            , hardGameKCD model
            , gamePage model
            ]
        H5  ->
            [ bigGraph model
            , hardGameACD model
            , gamePage model
            ]
        E1  ->
            [ bigGraph model
            , game model
            , gamePage model
            ]
        E2  ->
            [ bigGraph model
            , game model
            , gamePage model
            ]
        E3  ->
            [ bigGraph model
            , game model
            , gamePage model
            ]
        E4  ->
            [ bigGraph model
            , game model
            , gamePage model
            ]
        E5  ->
            [ bigGraph model
            , game model
            , gamePage model
            ]
        B6  ->
            [ bigGraph model 
            , basicK model
            , gamePage model
            ]
        M6  ->
            [ bigGraph model
            , mediumAD model
            , gamePage model
            ]
        H6  ->
            [ bigGraph model
            , hardGameKCD model
            , gamePage model
            ]
        E6  ->
            [ bigGraph model
            , game model
            , gamePage model
            ]
        L1  ->
            [ learnBackgroundImg
            , helpPage1 
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            , text "Help Page 1: Transformation" |> filled green |> scale 0.8 |> move (-50, 50) 
            ]
        L2  ->
            [ learnBackgroundImg
            , helpPage2 
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            , text "Help Page 2: Period" |> filled green |> scale 0.8 |> move (-50, 50) 
            ]
        L3  ->
            [ learnBackgroundImg
            , helpPage3 
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            , text "Help Page 3: Vertical Shift" |> filled green |> scale 0.8 |> move (-50, 50) 
            ]
        L4  ->
            [ learnBackgroundImg
            , helpPage4 
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            , text "Help Page 4: Phase Shift" |> filled green |> scale 0.8 |> move (-50, 50) 
            ]
        L5  ->
            [ learnBackgroundImg
            , helpPage5 
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            , text "Help Page 5: Amplitude" |> filled green |> scale 0.8 |> move (-50, 50) 
            ]
        I1  ->
            [ insPage1
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            ]
        I2  ->
            [ insPage2
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            ]
        I3  ->
            [ insPage3
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            ]
        I4  ->
            [ insPage4
            , backMainBtn
            , lastLevel model 
            , nextLevel model 
            ]

type Msg = Tick Float GetKeyState
         | B1B2
         | B2B3
         | B3B4
         | B4B5
         | B5B6
         | B6M1
         | M1M2
         | M2M3
         | M3M4
         | M5M6
         | M4M5
         | M6H1
         | H1H2
         | H2H3
         | H3H4
         | H4H5
         | H5H6
         | H6E1
         | E1E2
         | E2E3
         | E3E4
         | E4E5
         | E5E6
         | M1B6
         | B6B5
         | B5B4
         | B4B3
         | B3B2
         | B2B1
         | M2M1
         | M3M2
         | M4M3
         | M5M4
         | M6M5
         | H1M6
         | H2H1
         | H3H2
         | H4H3
         | H5H4
         | H6H5
         | E1H6
         | E2E1
         | E3E2
         | E4E3
         | E5E4
         | E6E5
         | SB1
         | SB2
         | SB3
         | SB4
         | SB5
         | SB6
         | SM1
         | SM6
         | SM5
         | SM4
         | SM3
         | SM2
         | SH1
         | SH2
         | SH3
         | SH4
         | SH5
         | SH6
         | SE1
         | SE2
         | SE3
         | SE4
         | SE5
         | SE6
         | BackToStartPage
         | AU 
         | AD 
         | KU 
         | KD 
         | CU 
         | CD 
         | DU 
         | DD
         | Play
         | Backmenu
         | ML1
         | L1L2 
         | L2L3 
         | L3L4 
         | L4L5
         | L2L1
         | L3L2
         | L4L3
         | L5L4
         | MI1
         | I1I2
         | I2I3
         | I3I4
         | I2I1
         | I3I2
         | I4I3
         | Reset
         

type State = StartPage 
           | B1 
           | B2 
           | B3 
           | B4 
           | B5 
           | M1 
           | M2 
           | M3 
           | M4 
           | M5 
           | H1 
           | H2 
           | H3 
           | H4 
           | H5 
           | E1 
           | E2 
           | E3 
           | E4 
           | E5 
           | B6 
           | M6 
           | H6 
           | E6 
           | MainMenu
           | L1
           | L2 
           | L3
           | L4
           | L5
           | I1
           | I2
           | I3
           | I4

update msg model =
    case msg of
        Tick t _ ->
            { model | time = t }
        B1B2 ->
            case model.state of
                B1  ->
                    { model | state = B2 , a = 1, k = 3, c = 0, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        B2B3 ->
            case model.state of
                B2  ->
                    { model | state = B3 , a = 1, k = 1, c = -3, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        B3B4 ->
            case model.state of
                B3  ->
                    { model | state = B4 , a = 1, k = 1, c = 0, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        B4B5 ->
            case model.state of
                B4  ->
                    { model | state = B5 , a = -3, k = 1, c = 0, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        B5B6 ->
            case model.state of
                B5  ->
                    { model | state = B6 , a = 1, k = 2, c = 0, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        B6M1 ->
            case model.state of
                B6  ->
                    { model | state = M1 , a = 2, k = 1, c = -2, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M1M2 ->
            case model.state of
                M1  ->
                    { model | state = M2, a = 2, k = 1, c = 0, d = -1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M2M3 ->
            case model.state of
                M2  ->
                    { model | state = M3 , a = 1, k = -1, c = 0, d = 2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M3M4 ->
            case model.state of
                M3  ->
                    { model | state = M4 , a = 1, k = 1, c = 3, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M5M6 ->
            case model.state of
                M5  ->
                    { model | state = M6 , a = -2, k = 1, c = 0, d = 1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        M4M5 ->
            case model.state of
                M4  ->
                    { model | state = M5, a = 3, k = 1, c = -3, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M6H1 ->
            case model.state of
                M6  ->
                    { model | state = H1 , a = 2, k = 1, c = 3, d = 1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        H1H2 ->
            case model.state of
                H1  ->
                    { model | state = H2 , a = 3, k = 2, c = -2, d = 1, a1 = 3, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        H2H3 ->
            case model.state of
                H2  ->
                    { model | state = H3 , a = 3, k = 2, c = 1, d = -1, a1 = 0, k1 = 2, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        H3H4 ->
            case model.state of
                H3  ->
                    { model | state = H4 , a = 1, k = 3, c = -1, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        H4H5 ->
            case model.state of
                H4  ->
                    { model | state = H5 , a = 2, k = 2, c = 2, d = 2, a1 = 0, k1 = 2, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        H5H6 ->
            case model.state of
                H5  ->
                    { model | state = H6 , a = -2, k = 1, c = 5, d = -1, a1 = -2, k1 = 1, c1 = 0, d1 = 0, func = 1   }
                otherwise ->
                    model
        H6E1 ->
            case model.state of
                H6  ->
                    { model | state = E1 , a = 1, k = 1, c = 1, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        E1E2 ->
            case model.state of
                E1  ->
                    { model | state = E2 , a = 3, k = 1, c = 2, d = -1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        E2E3 ->
            case model.state of
                E2  ->
                    { model | state = E3 , a = 2, k = 2, c = 4, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        E3E4 ->
            case model.state of
                E3  ->
                    { model | state = E4 , a = -2, k = 10, c = 3, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        E4E5 ->
            case model.state of
                E4  ->
                    { model | state = E5 , a = 4, k = 4, c = -4, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        E5E6 ->
            case model.state of
                E5  ->
                    { model | state = E6 , a = 3, k = 12, c = 18, d = -1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        M1B6 ->
            case model.state of
                M1  ->
                    { model | state = B6 , a = 1, k = 2, c = 0, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        B6B5 ->
            case model.state of
                B6  ->
                    { model | state = B5 , a = -3, k = 1, c = 0, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        B5B4 ->
            case model.state of
                B5  ->
                    { model | state = B4 , a = 1, k = 1, c = 0, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        B4B3 ->
            case model.state of
                B4  ->
                    { model | state = B3 , a = 1, k = 1, c = -3, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        B3B2 ->
            case model.state of
                B3  ->
                    { model | state = B2 , a = 1, k = 3, c = 0, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        B2B1 ->
            case model.state of
                B2  ->
                    { model | state = B1 , a = 2, k = 1, c = 0, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0   }
                otherwise ->
                    model
        M2M1 ->
            case model.state of
                M2  ->
                    { model | state = M1 , a = 2, k = 1, c = -2, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M3M2 ->
            case model.state of
                M3  ->
                    { model | state = M2, a = 2, k = 1, c = 0, d = -1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M4M3 ->
            case model.state of
                M4  ->
                    { model | state = M3 , a = 1, k = -1, c = 0, d = 2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M5M4 ->
            case model.state of
                M5  ->
                    { model | state = M4 , a = 1, k = 1, c = 3, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        M6M5 ->
            case model.state of
                M6  ->
                    { model | state = M5, a = 3, k = 1, c = -3, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        H1M6 ->
            case model.state of
                H1  ->
                    { model | state = M6 , a = -2, k = 1, c = 0, d = 1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        H2H1 ->
            case model.state of
                H2  ->
                    { model | state = H1 , a = 2, k = 1, c = 3, d = 1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        H3H2 ->
            case model.state of
                H3  ->
                    { model | state = H2 , a = 3, k = 2, c = -2, d = 1, a1 = 3, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        H4H3 ->
            case model.state of
                H4  ->
                    { model | state = H3 , a = 3, k = 2, c = 1, d = -1, a1 = 0, k1 = 2, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        H5H4 ->
            case model.state of
                H5  ->
                    { model | state = H4 , a = 1, k = 3, c = -1, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        H6H5 ->
            case model.state of
                H6  ->
                    { model | state = H5 , a = 2, k = 2, c = 2, d = 2, a1 = 0, k1 = 2, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        E1H6 ->
            case model.state of
                E1  ->
                    { model | state = H6 , a = -2, k = 1, c = 5, d = -1, a1 = -2, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        E2E1 ->
            case model.state of
                E2  ->
                    { model | state = E1 , a = 1, k = 1, c = 1, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        E3E2 ->
            case model.state of
                E3  ->
                    { model | state = E2 , a = 3, k = 1, c = 2, d = -1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        E4E3 ->
            case model.state of
                E4  ->
                    { model | state = E3 , a = 2, k = 2, c = 4, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        E5E4 ->
            case model.state of
                E5  ->
                    { model | state = E4 , a = -2, k = 10, c = 3, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        E6E5 ->
            case model.state of
                E6  ->
                    { model | state = E5 , a = 4, k = 4, c = -4, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SB1 ->
            case model.state of
                StartPage  -> -- 2sinx (set k1 = 1, c1 = 0 , d1 = 0)
                    { model | state = B1 , a = 2, k = 1, c = 0, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SB2 ->
            case model.state of
                StartPage  -> -- sin3x (set a1 = 1, c1 = 0 , d1 = 0) 
                    { model | state = B2 , a = 1, k = 3, c = 0, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0 }
                otherwise ->
                    model
        SB3 ->
            case model.state of
                StartPage  -> -- sin(x-3) (set a1 = 1, k1 = 1, d1 = 0)
                    { model | state = B3 , a = 1, k = 1, c = -3, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SB4 ->
            case model.state of
                StartPage  -> -- sinx - 2 (set a1 = 1, k1 = 1, c1 = 0) 
                    { model | state = B4 , a = 1, k = 1, c = 0, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0 }
                otherwise ->
                    model
        SB5 ->
            case model.state of
                StartPage  -> -- -3cosx (set k1=1, c1=0, d1=0)
                    { model | state = B5 , a = -3, k = 1, c = 0, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 1 }
                otherwise ->
                    model
        SB6 ->
            case model.state of
                StartPage  -> -- cos(2x) (set a1 = 1, c1 = 0, d1 = 0)
                    { model | state = B6 , a = 1, k = 2, c = 0, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1 }
                otherwise ->
                    model
        SM1 ->
            case model.state of
                StartPage  -> -- 2(sinx-2) (set k1 = 1, d1 = 0)
                    { model | state = M1 , a = 2, k = 1, c = -2, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SM6 ->
            case model.state of
                StartPage  -> -- -2cosx + 1 (set k1 = 1, c1 = 0) 
                    { model | state = M6 , a = -2, k = 1, c = 0, d = 1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 1 }
                otherwise ->
                    model
        SM5 ->
            case model.state of
                StartPage  -> -- 3(sinx-3) (set k1 = 1, d1 = 0)
                    { model | state = M5, a = 3, k = 1, c = -3, d = 0, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SM4 ->
            case model.state of
                StartPage  -> -- sin(x+3) - 2 (set a1 = 1, k1 = 1)
                    { model | state = M4 , a = 1, k = 1, c = 3, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SM3 ->
            case model.state of
                StartPage  -> -- sin(-1)x + 2 (set a1 = 1, c1 = 0)
                    { model | state = M3 , a = 1, k = -1, c = 0, d = 2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0 }
                otherwise ->
                    model
        SM2 ->
            case model.state of
                StartPage  -> -- 2sinx - 1 (set k1 = 1, c1 = 0)
                    { model | state = M2, a = 2, k = 1, c = 0, d = -1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SH1 ->
            case model.state of
                StartPage  -> -- 2sin(x+3) + 1 (set k1 = 1)
                    { model | state = H1 , a = 2, k = 1, c = 3, d = 1, a1 = 0, k1 = 1, c1 = 0, d1 = 0, func = 0 }
                otherwise ->
                    model
        SH2 ->
            case model.state of
                StartPage  -> -- 3sin2(x-2) +1 (set a1 = 3) 
                    { model | state = H2 , a = 3, k = 2, c = -2, d = 1, a1 = 3, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SH3 ->
            case model.state of
                StartPage  -> -- 3sin2(x+1) - 1 (set k1 = 2)
                    { model | state = H3 , a = 3, k = 2, c = 1, d = -1, a1 = 0, k1 = 2, c1 = 0, d1 = 0, func = 0 }
                otherwise ->
                    model
        SH4 ->
            case model.state of
                StartPage  -> -- cos3(x-1) + 1 (set a1 = 1) 
                    { model | state = H4 , a = 1, k = 3, c = -1, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1   }
                otherwise ->
                    model
        SH5 ->
            case model.state of
                StartPage  -> -- 2cos2(x+2) + 2 (set k1 = 2)
                    { model | state = H5 , a = 2, k = 2, c = 2, d = 2, a1 = 0, k1 = 2, c1 = 0, d1 = 0, func = 1 }
                otherwise ->
                    model
        SH6 ->
            case model.state of
                StartPage  -> -- -2cos(x+5) - 1 (set a1 = -2) 
                    { model | state = H6 , a = -2, k = 1, c = 5, d = -1, a1 = -2, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        SE1 ->
            case model.state of
                StartPage  -> -- sin(x+1) + 1
                    { model | state = E1 , a = 1, k = 1, c = 1, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0 }
                otherwise ->
                    model
        SE2 ->
            case model.state of
                StartPage  -> -- 3sin(x+2) - 1
                    { model | state = E2 , a = 3, k = 1, c = 2, d = -1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SE3 ->
            case model.state of
                StartPage  -> -- 2cos2(x+4) - 2
                    { model | state = E3 , a = 2, k = 2, c = 4, d = -2, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1  }
                otherwise ->
                    model
        SE4 ->
            case model.state of
                StartPage  -> -- -2sin10(x+3) + 1
                    { model | state = E4 , a = -2, k = 10, c = 3, d = 1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0  }
                otherwise ->
                    model
        SE5 ->
            case model.state of
                StartPage  -> -- 4sin(4(x+(-4))
                    { model | state = E5 , a = 4, k = 4, c = -4, d = 0, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 0 }
                otherwise ->
                    model
        SE6 ->
            case model.state of
                StartPage  -> -- 3cos(12(x+18)) - 1
                    { model | state = E6 , a = 3, k = 12, c = 18, d = -1, a1 = 1, k1 = 1, c1 = 0, d1 = 0, func = 1 }
                otherwise ->
                    model
        BackToStartPage -> {model | state = StartPage } 
        AU -> checkLevel { model | a1 = model.a1 + 1}
        AD -> checkLevel { model | a1 = model.a1 - 1}
        KU -> checkLevel { model | k1 = model.k1 + 1}
        KD -> checkLevel { model | k1 = model.k1 - 1}
        CU -> checkLevel { model | c1 = model.c1 + 1}
        CD -> checkLevel { model | c1 = model.c1 - 1}
        DU -> checkLevel { model | d1 = model.d1 + 1}
        DD -> checkLevel { model | d1 = model.d1 - 1}
        Play ->
            case model.state of
                MainMenu ->
                    { model | state = StartPage }
                otherwise ->
                    model
        Backmenu -> { model | state = MainMenu }
        ML1 ->
            case model.state of
                MainMenu  ->
                    { model | state = L1}
                otherwise ->
                    model
        L1L2 ->
            case model.state of
                L1  ->
                    { model | state = L2 }
                otherwise ->
                    model
        L2L3 ->
            case model.state of
                L2  ->
                    { model | state = L3 }
                otherwise ->
                    model
        L3L4 ->
            case model.state of
                L3  ->
                    { model | state = L4 }
                otherwise ->
                    model
        L4L5 ->
            case model.state of
                L4  ->
                    { model | state = L5 }
                otherwise ->
                    model
        L2L1 ->
            case model.state of
                L2  ->
                    { model | state = L1 }
                otherwise ->
                    model
        L3L2 ->
            case model.state of
                L3  ->
                    { model | state = L2 }
                otherwise ->
                    model
        L4L3 ->
            case model.state of
                L4  ->
                    { model | state = L3 }
                otherwise ->
                    model
        L5L4 ->
            case model.state of
                L5  ->
                    { model | state = L4 }
                otherwise ->
                    model
        MI1 ->
            case model.state of
                MainMenu  ->
                    { model | state = I1}
                otherwise ->
                    model
        I1I2 ->
            case model.state of
                I1  ->
                    { model | state = I2 }
                otherwise ->
                    model
        I2I3 ->
            case model.state of
                I2  ->
                    { model | state = I3 }
                otherwise ->
                    model
        I3I4 ->
            case model.state of
                I3  ->
                    { model | state = I4 }
                otherwise ->
                    model
        I2I1 ->
            case model.state of
                I2  ->
                    { model | state = I1 }
                otherwise ->
                    model
        I3I2 ->
            case model.state of
                I3  ->
                    { model | state = I2 }
                otherwise ->
                    model
        I4I3 ->
            case model.state of
                I4  ->
                    { model | state = I3 }
                otherwise ->
                    model
        Reset -> 
            case model.state of 
                StartPage -> 
                  { model |   b1Completed = False
                            , b2Completed = False
                            , b3Completed = False 
                            , b4Completed = False
                            , b5Completed = False
                            , b6Completed = False
                            , m1Completed = False
                            , m2Completed = False
                            , m3Completed = False 
                            , m4Completed = False
                            , m5Completed = False
                            , m6Completed = False
                            , h1Completed = False
                            , h2Completed = False
                            , h3Completed = False 
                            , h4Completed = False
                            , h5Completed = False
                            , h6Completed = False
                            , e1Completed = False
                            , e2Completed = False
                            , e3Completed = False 
                            , e4Completed = False
                            , e5Completed = False
                            , e6Completed = False}
                otherwise -> 
                    model 
        

-- ## START MODELS ## --
-- https://i.postimg.cc/x11JWwm2/background.jpg
backgroundImg = 
  group [ html 200 200
                      ( Html.img [HA.width 192, HA.height 128
                                 , HA.align "centered"
                                 , HA.src "https://png.pngtree.com/thumb_back/fh260/background/20190827/pngtree-trendy-80s-abstract-geometric-background-image_304909.jpg"
                                 ] 
                                 []
                      ) |> move (-100, 60)    
        ]

-- https://i.postimg.cc/Vk9rTX43/whitebackground.jpg
learnBackgroundImg = 
  group [ html 200 150
                      ( Html.img [HA.width 200
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/nzf0Y4RM/69.jpg"
                                 ] 
                                 []
                      ) |> move (-100, 60)     
        ]
        
startPageBackGroundImg = 
  group [ html 200 150
                      ( Html.img [HA.width 200
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/nzf0Y4RM/69.jpg"
                                 ] 
                                 []
                      ) |> move (-100, 60)    
        ]

gamePage model = 
  group 
  [ levelPage
      |> move (-85,50)      
      |> notifyTap BackToStartPage
  , lastLevel model
  , nextLevel model |> move (checkComplete model)
  , showLevelRect model
  , showInstructions model
  , showScore model
  ]


startPage model = 
  group 
  [
    startPageBackGroundImg 
  , rect 90 40
      |> outlined (solid 1) (rgb 230 125 50)
      |> move (-45,10)
  , rect 90 40
      |> outlined (solid 1) (rgb 230 125 50)
      |> move (48,10)
  , rect 90 40
      |> outlined (solid 1) (rgb 230 125 50)
      |> move (-45,-35)
  , rect 90 40
      |> outlined (solid 1) (rgb 230 125 50)
      |> move (48,-35)
  , text "Basic"
      |> bold
      |> filled (black)
      |> move (-60,15)
  , levelone_1 model |> move (-82, 0) |> notifyTap SB1
  , levelone_2 model |> move (-68, 0) |> notifyTap SB2
  , levelone_3 model |> move (-54, 0) |> notifyTap SB3
  , levelone_4 model |> move (-40, 0) |> notifyTap SB4
  , levelone_5 model |> move (-26, 0) |> notifyTap SB5
  , levelone_6 model |> move (-12, 0) |> notifyTap SB6
  , text "Medium"
      |> bold
      |> filled (black)
      |> move (25,15)
  , leveltwo_1 model |> move (12, 0) |> notifyTap SM1
  , leveltwo_2 model |> move (26, 0) |> notifyTap SM2
  , leveltwo_3 model |> move (40, 0) |> notifyTap SM3
  , leveltwo_4 model |> move (54, 0) |> notifyTap SM4
  , leveltwo_5 model |> move (68, 0) |> notifyTap SM5
  , leveltwo_6 model |> move (82, 0) |> notifyTap SM6
  , text "Hard"
      |> bold
      |> filled black
      |> move (-60,-30)
  , levelthree_1 model |> move (-82, -46) |> notifyTap SH1
  , levelthree_2 model |> move (-68, -46) |> notifyTap SH2
  , levelthree_3 model |> move (-54, -46) |> notifyTap SH3
  , levelthree_4 model |> move (-40, -46) |> notifyTap SH4
  , levelthree_5 model |> move (-26, -46) |> notifyTap SH5
  , levelthree_6 model |> move (-12, -46) |> notifyTap SH6
  , text "Extreme"
      |> bold
      |> filled black
      |> move (25,-30)
  , levelfour_1 model |> move (12, -46) |> notifyTap SE1
  , levelfour_2 model |> move (26, -46) |> notifyTap SE2
  , levelfour_3 model |> move (40, -46) |> notifyTap SE3
  , levelfour_4 model |> move (54, -46) |> notifyTap SE4
  , levelfour_5 model |> move (68, -46) |> notifyTap SE5
  , levelfour_6 model |> move (82, -46) |> notifyTap SE6
  , backMainBtn
  , text "Choose Difficulty!"
      |> filled red
      |> move (-40,35)
      
   , group [ circle 6
                      |> filled green
                      |> move (10.5,1.5)
                   ,text(String.fromInt (points model))
                        |> bold
                        |> filled green
                        |> scale 1
                        |> move (if points model >=10 then -11 else -5,-2.5)
                   , text( "✓")
                        |> filled textColor
                        |> scale 1
                        |> move (6.5,-3.5)]
                        |> move (75,50)
  , group [
      rect 18 10 
        |> filled lightRed 
        |> move (85, 37)
    , text "Reset" 
        |> filled white
        |> scale 0.5 
        |> move (78, 35)
        ] |> notifyTap Reset 
  ]

textColor = white

levelone_1 model = group [ circle 6
                      |> filled (getColor B1 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "1"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelone_2 model = group [ circle 6
                      |> filled (getColor B2 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   ,text "2"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelone_3 model = group [ circle 6
                      |> filled (getColor B3 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "3"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelone_4 model = group [ circle 6
                      |> filled (getColor B4 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "4"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelone_5 model = group [ circle 6
                      |> filled (getColor B5 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "5"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelone_6 model = group [ circle 6
                      |> filled (getColor B6 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "6"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
leveltwo_1 model = group [ circle 6
                      |> filled (getColor M1 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "1"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
leveltwo_2 model = group [ circle 6
                      |> filled (getColor M2 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "2"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
leveltwo_3 model = group [ circle 6
                      |> filled (getColor M3 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "3"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
leveltwo_4 model = group [ circle 6
                      |> filled (getColor M4 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "4"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
leveltwo_5 model = group [ circle 6
                      |> filled (getColor M5 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "5"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
leveltwo_6 model = group [ circle 6
                      |> filled (getColor M6 model)
                   , circle 6 
                      |> filled green
                      |> makeTransparent 0
                   , text "6"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelthree_1 model = group [ circle 6
                      |> filled (getColor H1 model)
                     , circle 6 
                      |> filled green
                      |> makeTransparent 0
                     , text "1"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelthree_2 model = group [ circle 6
                        |> filled (getColor H2 model)
                     , circle 6 
                        |> filled green
                        |> makeTransparent 0
                     , text "2"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelthree_3 model = group [circle 6
                        |> filled (getColor H3 model)
                     , circle 6 
                        |> filled green
                        |> makeTransparent 0
                     , text "3"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelthree_4 model = group [ circle 6
                        |> filled (getColor H4 model)
                     , circle 6 
                        |> filled green
                        |> makeTransparent 0
                     , text "4"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelthree_5 model = group [ circle 6
                        |> filled (getColor H5 model)
                     , circle 6 
                        |> filled green
                        |> makeTransparent 0
                     , text "5"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelthree_6 model = group [ circle 6
                        |> filled (getColor H6 model)
                     , circle 6 
                        |> filled green
                        |> makeTransparent 0
                     , text "6"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelfour_1 model = group [ circle 6
                        |> filled (getColor E1 model)
                     , circle 6 
                        |> filled green
                        |> makeTransparent 0
                     , text "1"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelfour_2 model = group [ circle 6
                        |> filled (getColor E2 model)
                    , circle 6 
                        |> filled green
                        |> makeTransparent 0
                    , text "2"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelfour_3 model = group [ circle 6
                        |> filled (getColor E3 model)
                    , circle 6 
                        |> filled green
                        |> makeTransparent 0
                    , text "3"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelfour_4 model = group [ circle 6
                      |> filled (getColor E4 model)
                    , circle 6 
                        |> filled green
                        |> makeTransparent 0
                    , text "4"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelfour_5 model = group [ circle 6
                      |> filled (getColor E5 model)
                    , circle 6 
                        |> filled green
                        |> makeTransparent 0
                    , text "5"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
levelfour_6 model = group [ circle 6
                      |> filled (getColor E6 model)
                    , circle 6 
                        |> filled green
                        |> makeTransparent 0
                    , text "6"
                        |> filled textColor
                        |> scale 0.6
                        |> move (-2,-2)]
                        
levelPage = group [ circle 8
                      |> outlined (solid 0.5) (black)
                    , circle 8 
                      |> filled white
                      |> makeTransparent 0
                    , text "Menu"
                        |> filled (red)
                        |> scale 0.4
                        |> move (-5.5,-2)]
                        
backMainBtn = group 
                  [ group [ html 16 20
                      ( Html.img [HA.width 16
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/vTJRWgVz/home-button.png"
                                 ] 
                                 []
                      ) |> move (-5, 10)   
                           ]
                  ] |> move (-85,48) |> notifyTap Backmenu
                  

bigGraph model = 
  group [
  line (-100,0) (100,0)
  |> outlined (solid 0.75) black
  ,
  line (0,-100) (0,45)
  |> outlined (solid 0.75) black
  , 
  line (-10 * pi, -100) (-10 * pi, 45) 
  |> outlined (solid 0.25) black
  , 
  line (-20 * pi, -100) (-20 * pi, 45) 
  |> outlined (solid 0.25) black
  , 
  line (-30 * pi, -100) (-30 * pi, 45) 
  |> outlined (solid 0.25) black
  , 
  line (10 * pi, -100) (10 * pi, 45) 
  |> outlined (solid 0.25) black
  , 
  line (20 * pi, -100) (20 * pi, 45) 
  |> outlined (solid 0.25) black
  , 
  line (30 * pi, -100) (30 * pi, 45) 
  |> outlined (solid 0.25) black
  ,
  group [
  line (-100, 10) (100,10)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ,
  line (-100, 20) (100, 20)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ,
  line (-100, 30) (100, 30)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ,
  line (-100, 40) (100, 40)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ,
  line (-100, -10) (100,-10)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ,
  line (-100, -20) (100, -20)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ,
  line (-100, -30) (100, -30)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ,
  line (-100, -40) (100, -40)
  |> outlined (solid 0.25) black
  |> makeTransparent 0.5
  ]
  |> move (0, 0.5)
  ,
  text "π"
  |>  filled black
  |> scale 0.5
  |> move (10*pi, -6)
  ,
  text "2π"
  |>  filled black
  |> scale 0.5
  |> move (20*pi, -6)
  ,
  text "-π"
  |>  filled black
  |> scale 0.5
  |> move (-10*pi, -6)
  ,
  text "-2π"
  |>  filled black
  |> scale 0.5
  |> move (-20*pi, -6)
  ,
  text "-3π"
  |>  filled black
  |> scale 0.5
  |> move (-30*pi, -6)
  ,
  text "0"
  |>  filled black
  |> scale 0.5
  |> move (2, -6)
  ,
  text "1"
  |>  filled black
  |> scale 0.5
  |> move (2, 10)
  ,
  text "2"
  |>  filled black
  |> scale 0.5
  |> move (2, 20)
  ,
  text "3"
  |>  filled black
  |> scale 0.5
  |> move (2, 30)
  ,
  text "4"
  |>  filled black
  |> scale 0.5
  |> move (2, 40)
  ,
  text "-1"
  |>  filled black
  |> scale 0.5
  |> move (2, -10)
  ,
  text "-2"
  |>  filled black
  |> scale 0.5
  |> move (2, -20)
  ,
  text "-3"
  |>  filled black
  |> scale 0.5
  |> move (2, -30)
  ,
  text "-4"
  |>  filled black
  |> scale 0.5
  |> move (2, -40)
  , drawOrginal model
  , drawUser model
  ] |> move (0, -20)

game model = 
  group [ 
    triangle 4 
      |> filled red
      |> rotate (degrees 90)
      |> move (-7.5, 25)
      |> notifyTap AU 
  , triangle 4 
      |> filled red 
      |> rotate (degrees -90)
      |> move (-7.5, 3)
      |> notifyTap AD
  , triangle 4 
      |> filled blue
      |> rotate (degrees 90)
      |> move (23, 25)
      |> notifyTap KU
  , triangle 4 
      |> filled blue 
      |> rotate (degrees -90)
      |> move (23, 3) 
      |> notifyTap KD
  , triangle 4 
      |> filled green
      |> rotate (degrees 90)
      |> move (57, 25)
      |> notifyTap CU
  , triangle 4 
      |> filled green
      |> rotate (degrees -90)
      |> move (57, 3)
      |> notifyTap CD
  , triangle 4 
      |> filled purple
      |> rotate (degrees 90)
      |> move (87, 25)
      |> notifyTap DU
  , triangle 4 
      |> filled purple
      |> rotate (degrees -90)
      |> move (87, 3)
      |> notifyTap DD
  , text (String.fromFloat model.a1)
      |> filled red
      |> move (-10, 10)
  , text (String.fromFloat model.k1)
      |> filled blue 
      |> move (20, 10)
  , text (String.fromFloat model.c1)
      |> filled green 
      |> move (54, 10)
  , text (String.fromFloat model.d1)
      |> filled purple 
      |> move (84, 10)
  , text (getText model) 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)

hardGameACD model = 
  group [ 
    triangle 4 
      |> filled red
      |> rotate (degrees 90)
      |> move (-7.5, 25)
      |> notifyTap AU 
  , triangle 4 
      |> filled red 
      |> rotate (degrees -90)
      |> move (-7.5, 3)
      |> notifyTap AD
  , triangle 4 
      |> filled green
      |> rotate (degrees 90)
      |> move (57, 25)
      |> notifyTap CU
  , triangle 4 
      |> filled green
      |> rotate (degrees -90)
      |> move (57, 3)
      |> notifyTap CD
  , triangle 4 
      |> filled purple
      |> rotate (degrees 90)
      |> move (87, 25)
      |> notifyTap DU
  , triangle 4 
      |> filled purple
      |> rotate (degrees -90)
      |> move (87, 3)
      |> notifyTap DD
  , text (String.fromFloat model.a1)
      |> filled red
      |> move (-10, 10)
  , text (String.fromFloat model.k1)
      |> filled black 
      |> move (20, 10)
  , text (String.fromFloat model.c1)
      |> filled green 
      |> move (54, 10)
  , text (String.fromFloat model.d1)
      |> filled purple 
      |> move (84, 10)
  , text (getText model) 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)
  
hardGameKCD model = 
  group [ 
   triangle 4 
      |> filled blue
      |> rotate (degrees 90)
      |> move (23, 25)
      |> notifyTap KU
  , triangle 4 
      |> filled blue 
      |> rotate (degrees -90)
      |> move (23, 3) 
      |> notifyTap KD
  , triangle 4 
      |> filled green
      |> rotate (degrees 90)
      |> move (57, 25)
      |> notifyTap CU
  , triangle 4 
      |> filled green
      |> rotate (degrees -90)
      |> move (57, 3)
      |> notifyTap CD
  , triangle 4 
      |> filled purple
      |> rotate (degrees 90)
      |> move (87, 25)
      |> notifyTap DU
  , triangle 4 
      |> filled purple
      |> rotate (degrees -90)
      |> move (87, 3)
      |> notifyTap DD
  , text (String.fromFloat model.a1)
      |> filled black
      |> move (-10, 10)
  , text (String.fromFloat model.k1)
      |> filled blue 
      |> move (20, 10)
  , text (String.fromFloat model.c1)
      |> filled green 
      |> move (54, 10)
  , text (String.fromFloat model.d1)
      |> filled purple 
      |> move (84, 10)
  , text (getText model) 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30) 

lastLevelBtn = 
  group
  [
    circle 8 
      |> filled blue
  , triangle 4
      |> filled white
      |> rotate (degrees 180)
      |> move (-2, 0)
  , rect 6 1.5
      |> filled white 
      |> move (1.5, 0)
  ]

basicA model = 
  group [ 
    triangle 4 
      |> filled red
      |> rotate (degrees 90)
      |> move (-7.5, 25)
      |> notifyTap AU 
  , triangle 4 
      |> filled red 
      |> rotate (degrees -90)
      |> move (-7.5, 3)
      |> notifyTap AD
  , text (String.fromFloat model.a1)
      |> filled red
      |> move (-10, 10)
  , text (if model.func == 0 then "sinx" else "cosx")
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)

basicK model = 
  group [ 
    triangle 4 
      |> filled blue
      |> rotate (degrees 90)
      |> move (23, 25)
      |> notifyTap KU
  , triangle 4 
      |> filled blue 
      |> rotate (degrees -90)
      |> move (23, 3) 
      |> notifyTap KD
  , text (String.fromFloat model.k1)
      |> filled blue 
      |> move (20, 10)
  , text (if model.func == 0 then "sin(    x)" else "cos(    x)") 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)
  
basicC model = 
  group [ 
    triangle 4 
      |> filled green
      |> rotate (degrees 90)
      |> move (57, 25)
      |> notifyTap CU
  , triangle 4 
      |> filled green
      |> rotate (degrees -90)
      |> move (57, 3)
      |> notifyTap CD
  , text (String.fromFloat model.c1)
      |> filled green 
      |> move (54, 10)
  , text (if model.func == 0 then "     sin(x +     )" else "     cos(x +     )") 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)

basicD model = 
  group [ 
    triangle 4 
      |> filled purple
      |> rotate (degrees 90)
      |> move (87, 25)
      |> notifyTap DU
  , triangle 4 
      |> filled purple
      |> rotate (degrees -90)
      |> move (87, 3)
      |> notifyTap DD
  , text (String.fromFloat model.d1)
      |> filled purple 
      |> move (84, 10)
  , text (if model.func == 0 then "                  sinx + " else "                  cosx + ") 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)

mediumAC model =
  group [ 
    triangle 4 
      |> filled red
      |> rotate (degrees 90)
      |> move (-7.5, 25)
      |> notifyTap AU 
  , triangle 4 
      |> filled red 
      |> rotate (degrees -90)
      |> move (-7.5, 3)
      |> notifyTap AD
  , triangle 4 
      |> filled green
      |> rotate (degrees 90)
      |> move (40, 25)
      |> notifyTap CU
  , triangle 4 
      |> filled green
      |> rotate (degrees -90)
      |> move (40, 3)
      |> notifyTap CD
  , text (String.fromFloat model.a1)
      |> filled red
      |> move (-10, 10)
  , text (String.fromFloat model.c1)
      |> filled green 
      |> move (37, 10)
  , text (if model.func == 0 then " sin(x +    )" else "cos(x +    )")
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)

mediumAD model = 
  group [ 
    triangle 4 
      |> filled red
      |> rotate (degrees 90)
      |> move (-7.5, 25)
      |> notifyTap AU 
  , triangle 4 
      |> filled red 
      |> rotate (degrees -90)
      |> move (-7.5, 3)
      |> notifyTap AD
  , triangle 4 
      |> filled purple
      |> rotate (degrees 90)
      |> move (40, 25)
      |> notifyTap DU
  , triangle 4 
      |> filled purple
      |> rotate (degrees -90)
      |> move (40, 3)
      |> notifyTap DD
  , text (String.fromFloat model.a1)
      |> filled red
      |> move (-10, 10)
  , text (String.fromFloat model.d1)
      |> filled purple 
      |> move (37, 10)
  , text (if model.func == 0 then " sinx + " else " cosx + ") 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)

mediumKD model =
  group [ 
    triangle 4 
      |> filled blue
      |> rotate (degrees 90)
      |> move (23, 25)
      |> notifyTap KU
  , triangle 4 
      |> filled blue 
      |> rotate (degrees -90)
      |> move (23, 3) 
      |> notifyTap KD
  , triangle 4 
      |> filled purple
      |> rotate (degrees 90)
      |> move (60, 25)
      |> notifyTap DU
  , triangle 4 
      |> filled purple
      |> rotate (degrees -90)
      |> move (60, 3)
      |> notifyTap DD
  , text (String.fromFloat model.k1)
      |> filled blue 
      |> move (20, 10)
  , text (String.fromFloat model.d1)
      |> filled purple 
      |> move (57, 10)
  , text (if model.func == 0 then " sin(    x)  + " else "     cos(x +    )  + ") 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)

mediumCD model = 
  group [ 
    triangle 4 
      |> filled green
      |> rotate (degrees 90)
      |> move (57, 25)
      |> notifyTap CU
  , triangle 4 
      |> filled green
      |> rotate (degrees -90)
      |> move (57, 3)
      |> notifyTap CD
  , triangle 4 
      |> filled purple
      |> rotate (degrees 90)
      |> move (87, 25)
      |> notifyTap DU
  , triangle 4 
      |> filled purple
      |> rotate (degrees -90)
      |> move (87, 3)
      |> notifyTap DD
  , text (String.fromFloat model.c1)
      |> filled green 
      |> move (54, 10)
  , text (String.fromFloat model.d1)
      |> filled purple 
      |> move (84, 10)
  , text (if model.func == 0 then "     sin(x +    )  + " else "     cos(x +    )  + ") 
      |> filled black
      |> move (0, 10)
  ] |> move (-25, 30)


nextLevelBtn = lastLevelBtn |> rotate (degrees 180)

lastLevel model = 
  let 
    btn = lastLevelBtn |> move (-65, 50)
  in 
    case model.state of
      B1 -> group []
      B2 -> btn |> notifyTap B2B1
      B3 -> btn |> notifyTap B3B2
      B4 -> btn |> notifyTap B4B3 
      B5 -> btn |> notifyTap B5B4
      B6 -> btn |> notifyTap B6B5
      M1 -> btn |> notifyTap M1B6
      M2 -> btn |> notifyTap M2M1
      M3 -> btn |> notifyTap M3M2
      M4 -> btn |> notifyTap M4M3
      M5 -> btn |> notifyTap M5M4
      M6 -> btn |> notifyTap M6M5
      H1 -> btn |> notifyTap H1M6
      H2 -> btn |> notifyTap H2H1
      H3 -> btn |> notifyTap H3H2
      H4 -> btn |> notifyTap H4H3
      H5 -> btn |> notifyTap H5H4
      H6 -> btn |> notifyTap H6H5
      E1 -> btn |> notifyTap E1H6
      E2 -> btn |> notifyTap E2E1
      E3 -> btn |> notifyTap E3E2
      E4 -> btn |> notifyTap E4E3
      E5 -> btn |> notifyTap E5E4
      E6 -> btn |> notifyTap E6E5
      L2 -> btn |> notifyTap L2L1
      L3 -> btn |> notifyTap L3L2
      L4 -> btn |> notifyTap L4L3
      L5 -> btn |> notifyTap L5L4
      I2 -> btn |> notifyTap I2I1
      I3 -> btn |> notifyTap I3I2
      I4 -> btn |> notifyTap I4I3
      _  -> group []

nextLevel model = 
  let 
    btn = nextLevelBtn |> move (80, 50)
  in 
    case model.state of
      B1 -> btn |> notifyTap B1B2
      B2 -> btn |> notifyTap B2B3
      B3 -> btn |> notifyTap B3B4
      B4 -> btn |> notifyTap B4B5 
      B5 -> btn |> notifyTap B5B6
      B6 -> btn |> notifyTap B6M1
      M1 -> btn |> notifyTap M1M2
      M2 -> btn |> notifyTap M2M3
      M3 -> btn |> notifyTap M3M4
      M4 -> btn |> notifyTap M4M5
      M5 -> btn |> notifyTap M5M6
      M6 -> btn |> notifyTap M6H1
      H1 -> btn |> notifyTap H1H2
      H2 -> btn |> notifyTap H2H3
      H3 -> btn |> notifyTap H3H4
      H4 -> btn |> notifyTap H4H5
      H5 -> btn |> notifyTap H5H6
      H6 -> btn |> notifyTap H6E1
      E1 -> btn |> notifyTap E1E2
      E2 -> btn |> notifyTap E2E3
      E3 -> btn |> notifyTap E3E4
      E4 -> btn |> notifyTap E4E5
      E5 -> btn |> notifyTap E5E6
      E6 -> group []
      L1 -> btn |> notifyTap L1L2
      L2 -> btn |> notifyTap L2L3
      L3 -> btn |> notifyTap L3L4 
      L4 -> btn |> notifyTap L4L5
      I1 -> btn |> notifyTap I1I2
      I2 -> btn |> notifyTap I2I3
      I3 -> btn |> notifyTap I3I4
      _  -> group []

showLevelRect model = 
  let 
    levelText = case model.state of 
                    B1 -> "Basic Lv1"
                    B2 -> "Basic Lv2"
                    B3 -> "Basic Lv3"
                    B4 -> "Basic Lv4"
                    B5 -> "Basic Lv5"
                    B6 -> "Basic Lv6"
                    M1 -> "Medium Lv1" 
                    M2 -> "Medium Lv2"
                    M3 -> "Medium Lv3"
                    M4 -> "Medium Lv4"
                    M5 -> "Medium Lv5"
                    M6 -> "Medium Lv6"
                    H1 -> "Hard Lv1"
                    H2 -> "Hard Lv2"
                    H3 -> "Hard Lv3"
                    H4 -> "Hard Lv4"
                    H5 -> "Hard Lv5"
                    H6 -> "Hard Lv6"
                    E1 -> "Extreme Lv1"
                    E2 -> "Extreme Lv2"
                    E3 -> "Extreme Lv3"
                    E4 -> "Extreme Lv4"
                    E5 -> "Extreme Lv5"
                    E6 -> "Extreme Lv6"
                    _  -> ""                                            
  in 
    group 
    [
      rect 30 5 
        |> filled green
        |> makeTransparent 0.5
    , text levelText
        |> filled black 
        |> scale 0.4
        |> move (-12, -2)
    ] |> move (80, 32)

instructionsInLevel = 
  group 
  [
    text "Use the buttons to match the"
      |> filled lightBlue 
      |> scale 0.3
  , text "blue graph with the red graph"
      |> filled lightBlue
      |> scale 0.3
      |> move (0, -4)
  ] |> move (-95, 35)
  
showInstructions model = 
   let 
     instructions = instructionsInLevel
     win_msg =  text "Congratulations!" |> filled green |> scale 0.4 |> move (-95, 35)
   in 
   if model.a == model.a1 && model.k == model.k1 && model.c == model.c1 && model.d == model.d1 
   then win_msg 
   else 
     if model.func == 0 && model.a == (-1)*model.a1 && model.k == (-1)*model.k1 && model.c == model.c1 && model.d == model.d1
     then win_msg
     else 
       if model.func == 1 && model.a == model.a1 && model.k == (-1)*model.k1 && model.c == model.c1 && model.d == model.d1
       then win_msg
       else instructions
showScore model =
  let 
     instructions = instructionsInLevel
     score_msg = group [ circle 6
                      |> filled green
                      |> move (if points model >=10 then 15.5 else 10.5,1.5)
                   ,text(String.fromInt (points model))
                        |> bold
                        |> filled green
                        |> scale 1
                        |> move (-5,-2.5)
                   , text( "✓")
                        |> filled textColor
                        |> scale 1
                        |> move (if points model >=10 then 11.5 else 6.5,-3.5)]
   in 
   if points model >=0
   then score_msg|> move (170, 75)|>scale 0.5
       else instructions
previousButton = group[ roundedRect 30 13 5
                            |> filled (rgb 234 60 83)
                            |> move(-60,-50)
                        , text "Back"
                              |> centered
                              |> filled black
                              |>move(-120,-100)
                              |> scale 0.5]
previousButton2 = group[ roundedRect 30 13 5
                            |> filled (rgb 234 60 83)
                            |> move (-75,55)
                        , text "Back"
                              |> centered
                              |> filled black
                              |> move (-150,105)
                              |> scale 0.5]
nextButton = group[ roundedRect 30 13 5
                            |> filled (rgb 80 220 100)
                            |> move(60,-50)
                        , text "Next"
                              |> centered
                              |> filled black
                              |>move(120,-100)
                              |> scale 0.5]
nextButton2 = group[ roundedRect 30 13 5
                            |> filled (rgb 80 220 100)
                            |> move(80,-50)
                        , text "Next"
                              |> centered
                              |> filled black
                              |>move(160,-100)
                              |> scale 0.5] |> move (0, 105)

playButton = group[ roundedRect 50 13 5
                            |> filled (rgb 168 35 129)
                            |> move(0,20)
                        , text "PLAY"
                              |> centered
                              |> bold
                              |> filled white
                              |>move(0,35)
                              |> scale 0.5]
                              
instructionButton = group [roundedRect 50 13 5
                            |> filled (rgb 168 35 129)
                            |> move(0,0)
                        , text "INSTRUCTIONS"
                              |> centered
                              |> bold
                              |> filled white
                              |>move(0,-3)
                              |> scale 0.5]
                                                      
infoButton = group [roundedRect 50 13 5
                            |> filled (rgb 168 35 129)
                            |> move(0,-20)
                        , text "LEARN TRIG"
                              |> centered
                              |> bold
                              |> filled white
                              |>move(0,-43)
                              |> scale 0.5]

helpPage1 = group [ html 192 100
                      ( Html.img [HA.width 130
                                 , HA.align "centered"
                                 , HA.src "https://i.ytimg.com/vi/AS7THLj-OhI/maxresdefault.jpg"] 
                                 []
                      ) |> move (-60, 40)
                  ]

helpPage2 = group [ html 192 100
                      ( Html.img [HA.width 130
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/MpCMwKgR/period.jpg"] 
                                 []
                      ) |> move (-60, 40)    
                 ]
                 
helpPage3 = group [ html 192 100
                      ( Html.img [HA.width 130
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/GpvBmn1f/vshift.png"] 
                                 []
                      ) |> move (-60, 40)    
                 ]

helpPage4 = group [ html 192 100
                      ( Html.img [HA.width 130
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/Nj99ZrCB/phaseshift.jpg"] 
                                 []
                      ) |> move (-60, 40)    
                 ]
                
helpPage5 = group [ html 192 100
                      ( Html.img [HA.width 130
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/4NFH815W/amp.jpg"] 
                                 []
                      ) |> move (-60, 40)    
                  ]
                 
insPage1 =  group 
              [ 
              startPageBackGroundImg
              ,html 150 100
                      ( Html.img [HA.width 150, HA.height 80
                                 , HA.align "centered"
                                 , HA.src "https://i.postimg.cc/KcLbPb3Y/Screen-Shot-2021-03-19-at-4-14-28-PM.png"] 
                                 [])
                            |> move (-75,45)
              ,text "Instructions 1"
              |> bold
              |> filled black
              |> scale 0.5
              |> move (-20, 52.5)
              , group 
                   [
                   rect 150 30
                   |> filled white
                   |> move (0, -40)
                 ,text "First once you click Play choose your difficulty level for your trig function"
                   |> filled red
                   |> scale 0.5
                   |> move (-145, -60)
                   |>scale 0.5
                  ,text "BASIC: Can only do ONE transformation and is the easiest level"
                   |> filled black
                   |> scale 0.5
                   |> move (-145, -70)
                   |>scale 0.5
                   ,text "MEDIUM: Can do TWO transformation"
                   |> filled black
                   |> scale 0.5
                   |> move (-145, -80)
                   |>scale 0.5
                   ,text "HARD: Can do THREE transformation"
                   |> filled black
                   |> scale 0.5
                   |> move (-145, -90)
                   |>scale 0.5
                   ,text "EXTREME: Can do FOUR transformation"
                   |> filled black
                   |> scale 0.5
                   |> move (-145, -100)
                   |>scale 0.5
                   ] |> move (0, -10)
            ]
            
insPage2 = group 
            [
             startPageBackGroundImg
            ,text "Instructions 2"
              |> bold
              |> filled black
              |> scale 0.5
              |> move (-20, 52.5)
            , group [
            html 150 100
                ( Html.img [HA.width 150
                , HA.align "centered"
                , HA.src "https://i.postimg.cc/Y9SQg8C6/Screen-Shot-2021-03-19-at-4-54-53-PM.png"] 
                [])
                |> move (-75,45)    
            , rect 150 30
            |> filled white
            |> move (0, -40)
            ,text "Once you choose a level you need to adjust the sin or cos graph accordingly using the arrows"
            |> filled red
            |> scale 0.5
            |> move (-145, -60)
            |>scale 0.5
            ,text "GOAL: is to apply the appropriate transformation in order to match the given RED curve on the graph"
            |> filled purple
            |> scale 0.5
            |> move (-145, -70)
            |>scale 0.5
            ,text "Once you start adjusting the buttons you should see the tranformations being applied to your function"
            |> filled black
            |> scale 0.5
            |> move (-145, -80)
            |>scale 0.5
            ,text "NOTE: You can only move on to the next question once you finish finding the equation of the current graph"
            |> filled black
            |> scale 0.5
            |> move (-145, -90)
            |>scale 0.5
            ] |> move (0, -10)
            ] 
            
insPage3 = group 
              [
              startPageBackGroundImg
              ,text "Instructions 3"
              |> bold
              |> filled black
              |> scale 0.5
              |> move (-20, 52.5)
              ,group [html 150 100
                  ( Html.img [HA.width 150, HA.height 85
                  , HA.align "centered"
                  , HA.src "https://i.postimg.cc/hGFBXPKg/Screen-Shot-2021-03-19-at-5-33-27-PM.png"] 
                  [])
                  |> move (-75,45)
              , rect 150 20
              |> filled white
              |> move (0, -50)
              ,text "Experiment and MOVE 2 UNITS DOWN because the graph does not match"
              |> filled red
              |> scale 0.8
              |> move (-145, -100)
              |>scale 0.5
              ] |> move (0, -10)
              ]
              
insPage4 = group 
            [
             startPageBackGroundImg
            ,text "Instructions 4"
              |> bold
              |> filled black
              |> scale 0.5
              |> move (-20, 52.5)
            , group [html 150 100
                ( Html.img [HA.width 150, HA.height 85
                , HA.align "centered"
                , HA.src "https://i.postimg.cc/Kv6GM55d/Screen-Shot-2021-03-19-at-5-41-27-PM.png"] 
                [])
                |> move (-75,44)
            , rect 150 20
            |> filled white
            |> move (0, -50)
            ,text "Once you get the RIGHT equation, the red graph should align with the blue graph"
            |> filled orange
            |> scale 0.5
            |> move (-145, -100)
            |>scale 0.5
            ,text "You can now move to the next level in Extreme category and complete the rest of the quiz!"
            |> filled red
            |> scale 0.5
            |> move (-145, -110)
            |>scale 0.5
            ] |> move (0, -5)
            ]


-- ## END MODELS ## --

-- ## START FUNCTIONS ## -- 
getText model = if model.func == 0 then " sin(    (x +    )) + " else "cos(    (x +    )) + "

drawOrginal model = 
  if model.func == 0 then duplicateSin model.a model.k model.c model.d red |> scale 10
  else duplicateCos model.a model.k model.c model.d red |> scale 10
  
drawUser model =
  if model.func == 0 then duplicateSin model.a1 model.k1 model.c1 model.d1 blue |> scale 10
  else duplicateCos model.a1 model.k1 model.c1 model.d1 blue |> scale 10

drawSin startPoint endPoint height color = 
  let 
    x0 = Tuple.first startPoint 
    y0 = Tuple.second startPoint
    x1 = Tuple.first endPoint
    y1 = Tuple.second endPoint
    x_dis = x1 + x0
  in 
    curve startPoint [Pull (x_dis/4, height) (x_dis/2, 0) , Pull (3*x_dis/4, (-1)*height) endPoint]
      |> outlined (solid 0.1) color

-- y = a*sin(k(x+c))+d
sinTransformation a k c d colour =
  drawSin (0,0) ((2*pi)/k, 0) (2*a) colour
  |> move((-1)*c, d)

-- y = a*cos(k(x+c))+d
cosTransformation a k c d colour =
  sinTransformation a ((-1)*k) (c - pi/(2*k)) d colour

duplicateSin a k c d colour =
  let
    graph = sinTransformation a k c d colour
  in
    group (List.map (\n -> graph |> move (toFloat n*2*pi/k, 0)) (List.range -100 100))
    
      
duplicateCos a k c d colour =
  let
    graph = cosTransformation a k c d colour
  in
    group (List.map (\n -> graph |> move (toFloat n*2*pi/k, 0)) (List.range -100 100))
    
checkComplete model = 
   if model.a == model.a1 && model.k == model.k1 && model.c == model.c1 && model.d == model.d1 
   then (0,0) 
   else 
     if model.func == 0 && model.a == (-1)*model.a1 && model.k == (-1)*model.k1 && model.c == model.c1 && model.d == model.d1
     then (0,0)
     else 
       if model.func == 1 && model.a == model.a1 && model.k == (-1)*model.k1 && model.c == model.c1 && model.d == model.d1
       then (0,0)
       else (100, 100)

checkLevel model =
  if checkComplete model == (0,0) then 
    case model.state of 
      B1 -> {model | b1Completed = True}
      B2 -> {model | b2Completed = True}
      B3 -> {model | b3Completed = True}
      B4 -> {model | b4Completed = True}
      B5 -> {model | b5Completed = True}
      B6 -> {model | b6Completed = True}
      M1 -> {model | m1Completed = True}
      M2 -> {model | m2Completed = True}
      M3 -> {model | m3Completed = True}
      M4 -> {model | m4Completed = True}
      M5 -> {model | m5Completed = True}
      M6 -> {model | m6Completed = True}
      H1 -> {model | h1Completed = True}
      H2 -> {model | h2Completed = True}
      H3 -> {model | h3Completed = True}
      H4 -> {model | h4Completed = True}
      H5 -> {model | h5Completed = True}
      H6 -> {model | h6Completed = True}
      E1 -> {model | e1Completed = True}
      E2 -> {model | e2Completed = True}
      E3 -> {model | e3Completed = True}
      E4 -> {model | e4Completed = True}
      E5 -> {model | e5Completed = True}
      E6 -> {model | e6Completed = True}
      _ -> model 
  else model 
   
getColor state model = 
  let 
    status = case state of 
                B1 -> model.b1Completed
                B2 -> model.b2Completed
                B3 -> model.b3Completed
                B4 -> model.b4Completed
                B5 -> model.b5Completed
                B6 -> model.b6Completed
                M1 -> model.m1Completed
                M2 -> model.m2Completed
                M3 -> model.m3Completed
                M4 -> model.m4Completed
                M5 -> model.m5Completed
                M6 -> model.m6Completed
                H1 -> model.h1Completed 
                H2 -> model.h2Completed
                H3 -> model.h3Completed
                H4 -> model.h4Completed
                H5 -> model.h5Completed
                H6 -> model.h6Completed
                E1 -> model.e1Completed
                E2 -> model.e2Completed
                E3 -> model.e3Completed 
                E4 -> model.e4Completed 
                E5 -> model.e5Completed
                E6 -> model.e6Completed
                _  -> False                
  in 
    if status then lightGreen else rgba 247 126 126 1

points model = 
  List.length (List.filter (\a -> a) [model.b1Completed , model.b2Completed , model.b3Completed , model.b4Completed , model.b5Completed , model.b6Completed 
    , model.m1Completed , model.m2Completed , model.m3Completed  , model.m4Completed , model.m5Completed , model.m6Completed 
    , model.h1Completed , model.h2Completed , model.h3Completed  , model.h4Completed , model.h5Completed , model.h6Completed 
    , model.e1Completed , model.e2Completed , model.e3Completed  , model.e4Completed , model.e5Completed , model.e6Completed ])
     
-- ## END FUNCTIONS ## --

type alias Model =
    { time : Float
    , state : State
    , a : Float
    , k : Float
    , c : Float
    , d : Float
    , a1 : Float
    , k1 : Float
    , c1 : Float
    , d1 : Float
    , func : Int
    , b1Completed : Bool
    , b2Completed : Bool
    , b3Completed : Bool
    , b4Completed : Bool
    , b5Completed : Bool
    , b6Completed : Bool
    , m1Completed : Bool
    , m2Completed : Bool
    , m3Completed : Bool 
    , m4Completed : Bool
    , m5Completed : Bool
    , m6Completed : Bool
    , h1Completed : Bool
    , h2Completed : Bool
    , h3Completed : Bool 
    , h4Completed : Bool
    , h5Completed : Bool
    , h6Completed : Bool
    , e1Completed : Bool
    , e2Completed : Bool
    , e3Completed : Bool 
    , e4Completed : Bool
    , e5Completed : Bool
    , e6Completed : Bool
    }

init : Model
init = { time = 0 
       , state = MainMenu
       , a = 1
       , k = 1
       , c = 0
       , d = 0
       , a1 = 0
       , k1 = 0
       , c1 = 0
       , d1 = 0
       , func = 0
       , b1Completed = False
       , b2Completed = False
       , b3Completed = False 
       , b4Completed = False
       , b5Completed = False
       , b6Completed = False
       , m1Completed = False
       , m2Completed = False
       , m3Completed = False 
       , m4Completed = False
       , m5Completed = False
       , m6Completed = False
       , h1Completed = False
       , h2Completed = False
       , h3Completed = False 
       , h4Completed = False
       , h5Completed = False
       , h6Completed = False
       , e1Completed = False
       , e2Completed = False
       , e3Completed = False 
       , e4Completed = False
       , e5Completed = False
       , e6Completed = False
       }
