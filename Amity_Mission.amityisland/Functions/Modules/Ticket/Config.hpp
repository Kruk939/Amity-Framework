class Ticket {
      class Config {
            class Money {
                  defaultFaction = 1; //rest from faction split goes to this faction
                  split[] = {
                        {3, 40},          //faction_id, percentage
                        {4, 60}
                  };
            };
      };
      class Prests {
            class speed_less_20 {
                  id = 1;
                  name = "STR_TICKET_PRESET_SPEED_LESS_20_TITLE";
                  reason = "STR_TICKET_PRESET_SPEED_LESS_20_REASON";
                  order = 0;
                  class Points {
                        enabled = 1;
                        min = 3;
                        max = 5;
                  };
                  class Amount {
                        enabled = 1;
                        min = 500;
                        max = 1000;
                  };
            };
            class speed_more_20 {
                  id = 2;
                  name = "Przekroczenie predkosci ponad 20 km/h";
                  reason = "Przekroczenie predkosci o xx km/h";
                  order = 1;
                  class Points {
                        enabled = 1;
                        min = 8;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 1000;
                        max = 3500;
                  };
            };
            class dangerous_ride {
                  id = 3;
                  name = "Stwarzanie zagrozenia w ruchu drogowym";
                  reason = "Stwazanie zagrozenia w ruchu drogowym";
                  order = 2;
                  class Points {
                        enabled = 1;
                        min = 8;
                        max = 8;
                  };
                  class Amount {
                        enabled = 1;
                        min = 500;
                        max = 1000;
                  };
            };
            class drug_ride {
                  id = 4;
                  name = "Jazda pod wplywem substancji odurzajacych";
                  reason = "Jazda pod wplywem substancji odurzajacych + odebranie uprawnien";
                  order = 3;
                  class Points {
                        enabled = 0;
                        min = 0;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 3500;
                        max = 4500;
                  };
            };
            class alcohol_ride {
                  id = 5;
                  name = "Jazda pod wplywem alkoholu";
                  reason = "Jazda pod wplywem alkoholu + odebranie uprawnien";
                  order = 4;
                  class Points {
                        enabled = 0;
                        min = 0;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 3500;
                        max = 4500;
                  };
            };
            class road_sign_disregard {
                  id = 6;
                  name = "Niedostosowanie sie do znakow poziomych i/lub pionowych";
                  reason = "Niedostosowanie sie do znakow poziomych i/lub pionowych";
                  order = 5;
                  class Points {
                        enabled = 1;
                        min = 5;
                        max = 8;
                  };
                  class Amount {
                        enabled = 1;
                        min = 800;
                        max = 1500;
                  };
            };
            class wrong_crossing_street_place {
                  id = 7;
                  name = "Przekroczenie jezdni w niedozwolonym miejscu";
                  reason = "Przekroczenie jezdni w niedozwolonym miejscu";
                  order = 6;
                  class Points {
                        enabled = 0;
                        min = 0;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 500;
                        max = 1500;
                  };
            };
            class wrong_precendence {
                  id = 8;
                  name = "";
                  reason = "";
                  order = 7;
                  class Points {
                        enabled = 1;
                        min = 8;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 4000;
                        max = 5000;
                  };
            };
            class bad_tech_cond {
                  id = 9;
                  name = "Zly stan techniczny pojazdu";
                  reason = "Zly stan techniczny pojazdu + odholowanie";
                  order = 8;
                  class Points {
                        enabled = 1;
                        min = 3;
                        max = 3;
                  };
                  class Amount {
                        enabled = 1;
                        min = 2000;
                        max = 4000;
                  };
            };
            class bad_overtaking {
                  id = 10;
                  name = "Wyprzedzanie w miejscu niedozwolonym";
                  reason = "Wyprzedzanie w miejscu niedozwolonym";
                  order = 9;
                  class Points {
                        enabled = 1;
                        min = 5;
                        max = 8;
                  };
                  class Amount {
                        enabled = 1;
                        min = 1500;
                        max = 2500;
                  };
            };
            class no_helmet {
                  id = 11;
                  name = "Brak kasku ochronnego podczas jazdy motocyklem";
                  reason = "Brak kasku ochronnego podczas jazdy motocyklem";
                  order = 10;
                  class Points {
                        enabled = 1;
                        min = 4;
                        max = 4;
                  };
                  class Amount {
                        enabled = 1;
                        min = 1500;
                        max = 2500;
                  };
            };
            class no_lights {
                  id = 12;
                  name = "Brak oswietlenia samochodu po godzinie 18";
                  reason = "Brak oswietlenia samochodu po godzinie 18";
                  order = 11;
                  class Points {
                        enabled = 1;
                        min = 2;
                        max = 2;
                  };
                  class Amount {
                        enabled = 1;
                        min = 1000;
                        max = 2000;
                  };
            };
            class bad_stop_place {
                  id = 13;
                  name = "Zatrzymanie sie i postoj lub parkowanie w nieodpowiednim miejscu";
                  reason = "Zatrzymanie sie i postoj lub parkowanie w nieodpowiednim miejscu";
                  order = 12;
                  class Points {
                        enabled = 1;
                        min = 3;
                        max = 3;
                  };
                  class Amount {
                        enabled = 1;
                        min = 800;
                        max = 1500;
                  };
            };
            class accident_no_injured {
                  id = 14;
                  name = "Spowodowanie kolizji drogowej bez poszkodowanych";
                  reason = "Spowodowanie kolizji drogowej bez poszkodowanych";
                  order = 13;
                  class Points {
                        enabled = 1;
                        min = 8;
                        max = 8;
                  };
                  class Amount {
                        enabled = 1;
                        min = 1500;
                        max = 2000;
                  };
            };
            class accident_injured {
                  id = 15;
                  name = "Spowodowanie wypadku drogowego z poszkodowanymi";
                  reason = "Spowodowanie wypadku drogowego z xxx poszkodowanymi (jesli wiecej niz 1 to odebranie uprawnien)";
                  order = 14;
                  class Points {
                        enabled = 1;
                        min = 10;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 2000;
                        max = 5500;
                  };
            };
            class left_accident_place {
                  id = 16;
                  name = "Ucieczka z miejsca zdarzenia";
                  reason = "Ucieczka z miejsca zdarzenia";
                  order = 15;
                  class Points {
                        enabled = 0;
                        min = 0;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 2000;
                        max = 10000;
                  };
            };
            class drive_no_license {
                  id = 17;
                  name = "Prowadzenie pojazdu bez uprawnien";
                  reason = "Prowadzenie pojazdu bez uprawnien";
                  order = 16;
                  class Points {
                        enabled = 0;
                        min = 0;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 1000;
                        max = 1500;
                  };
            };
            class duty_obstruction {
                  id = 18;
                  name = "Utrudnianie czynnosci sluzbowych funkcjonariusza";
                  reason = "Utrudnianie czynnosci sluzbowych funkcjonariusza";
                  order = 17;
                  class Points {
                        enabled = 0;
                        min = 0;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 500;
                        max = 500;
                  };
            };
            class traffic_stop_ignore {
                  id = 19;
                  name = "Niezatrzymanie sie do kontroli";
                  reason = "Niezatrzymanie sie do kontroli";
                  order = 18;
                  class Points {
                        enabled = 1;
                        min = 10;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 1750;
                        max = 1750;
                  };
            };
            class special_vehicle_wrong_usage {
                  id = 20;
                  name = "Wykorzystanie pojazdu specjalnego niezgodnie z przeznaczeniem";
                  reason = "Wykorzystanie pojazdu specjalnego niezgodnie z przeznaczeniem + odebranie uprawnien na ten pojazd";
                  order = 19;
                  class Points {
                        enabled = 0;
                        min = 0;
                        max = 10;
                  };
                  class Amount {
                        enabled = 1;
                        min = 2200;
                        max = 2200;
                  };
            };
      };
};
