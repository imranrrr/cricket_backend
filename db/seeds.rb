# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Venue.create!([
    {name: "Simonds Stadium, Geelong"},
    {name: "Bellerive Oval, Hobart"},
    {name: "Sydney Cricket Ground, Sydney"},
    {name: "Perth Stadium, Perth"},
    {name: "Melbourne Cricket Ground, Melbourne"},
    {name: "The Gabba, Brisbane"},
    {name: "Adelaide Oval, Adelaide"}
])

Team.create!([
    {name: "India", matches: 30, points: 8093, ranking: 270 },
    {name: "England",matches: 28, points: 7432, ranking: 265},
    {name: "Pakistan",matches: 30, points: 7826, ranking: 261},
    {name: "South Africa",matches: 25, points: 6336, ranking: 253},
    {name: "Australia",matches: 33, points: 8270, ranking: 251},
    {name: "New Zealand",matches: 28, points: 6996, ranking: 250},
    {name: "West Indies",matches: 36, points: 8622, ranking: 240},
    {name: "Bangladesh",matches: 33, points: 7680, ranking: 233},
    {name: "Sri Lanka",matches: 33, points: 7606, ranking: 230},
    {name: "Afghanistan",matches: 14, points: 3167, ranking: 226},
    {name: "UAE",matches: 21, points: 4030, ranking: 192},
    {name: "Zimbabwe",matches: 28, points: 5278, ranking: 189},
    {name: "Nepal",matches: 25, points: 4624, ranking: 185},
    {name: "Ireland",matches: 35, points: 6439, ranking: 184},
    {name: "Namibia",matches: 29, points: 5321, ranking: 183},
    {name: "Scotland",matches: 19, points: 3475, ranking: 183},
    {name: "Oman",matches: 19, points: 3238, ranking: 170},
    {name: "Netherlands",matches: 17, points: 2841, ranking: 167},
    {name: "Papua New Guinea",matches: 3017, points: 2575, ranking: 151},
    {name: "Singapore" ,matches: 8, points: 1194, ranking: 149}
])
MatchSchedule.create!([
    {match_date: Date.parse("2022-10-16"), group: "Group A", a_team: 9, b_team: 15, venue_id: 1, time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-16"), group: "Group A", a_team: 11, b_team: 18, venue_id: 1,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-17"), group: "Group B", a_team: 7, b_team: 16, venue_id: 2,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-17"), group: "Group B", a_team: 12, b_team: 14, venue_id: 2,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-18"), group: "Group A", a_team: 15, b_team: 18, venue_id: 1,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-18"), group: "Group A", a_team: 9, b_team: 11, venue_id: 1,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-19"), group: "Group B", a_team: 16, b_team: 14, venue_id: 2,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-19"), group: "Group B", a_team: 7, b_team: 12, venue_id: 2,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-20"), group: "Group A", a_team: 9, b_team: 18, venue_id: 1,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-20"), group: "Group A", a_team: 15, b_team: 11, venue_id: 1,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-21"), group: "Group B", a_team: 7, b_team: 14, venue_id: 2,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-21"), group: "Group B", a_team: 16, b_team: 12, venue_id: 2,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-22"), group: "Super 12 Group 1", a_team: 6, b_team: 5, venue_id: 3,  time_gmt: "07:00 AM", time_ist: "12:30 PM", time_local: "06:00 PM" },
    {match_date: Date.parse("2022-10-22"), group: "Super 12 Group 1", a_team: 2, b_team: 10, venue_id: 4,  time_gmt: "11:00 AM", time_ist: "4:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-23"), group: "Super 12 Group 1", a_team: 9, b_team: 14, venue_id: 2,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-23"), group: "Super 12 Group 2", a_team: 1, b_team: 3, venue_id: 5,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-24"), group: "Super 12 Group 2", a_team: 8, b_team: 18, venue_id: 2,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-24"), group: "Super 12 Group 2", a_team: 4, b_team: 12, venue_id: 2,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-25"), group: "Super 12 Group 1", a_team: 5, b_team: 9, venue_id: 4,  time_gmt: "11:00 AM", time_ist: "4:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-26"), group: "Super 12 Group 1", a_team: 2, b_team: 14, venue_id: 5,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-26"), group: "Super 12 Group 1", a_team: 6, b_team: 10, venue_id: 5,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-27"), group: "Super 12 Group 2", a_team: 4, b_team: 8, venue_id: 3,  time_gmt: "03:00 AM", time_ist: "8:30 AM", time_local: "02:00 PM" },
    {match_date: Date.parse("2022-10-27"), group: "Super 12 Group 2", a_team: 1, b_team: 18, venue_id: 3,  time_gmt: "07:00 AM", time_ist: "12:30 PM", time_local: "06:00 PM" },
    {match_date: Date.parse("2022-10-27"), group: "Super 12 Group 2", a_team: 3, b_team: 12, venue_id: 4,  time_gmt: "11:00 AM", time_ist: "4:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-28"), group: "Super 12 Group 1", a_team: 10, b_team: 14, venue_id: 5,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-28"), group: "Super 12 Group 1", a_team: 2, b_team: 5, venue_id: 5,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-29"), group: "Super 12 Group 1", a_team: 6, b_team: 9, venue_id: 3,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-30"), group: "Super 12 Group 2", a_team: 8, b_team: 12, venue_id: 6,  time_gmt: "03:00 AM", time_ist: "8:30 AM", time_local: "01:00 PM" },
    {match_date: Date.parse("2022-10-30"), group: "Super 12 Group 2", a_team: 3, b_team: 18, venue_id: 4,  time_gmt: "07:00 AM", time_ist: "12:30 PM", time_local: "03:00 PM" },
    {match_date: Date.parse("2022-10-30"), group: "Super 12 Group 2", a_team: 1, b_team: 4, venue_id: 4,  time_gmt: "11:00 AM", time_ist: "4:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-10-31"), group: "Super 12 Group 1", a_team: 5, b_team: 14, venue_id: 6,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "06:00 PM" },
    {match_date: Date.parse("2022-11-01"), group: "Super 12 Group 1", a_team: 10, b_team: 9, venue_id: 6,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "02:00 PM" },
    {match_date: Date.parse("2022-11-01"), group: "Super 12 Group 1", a_team: 2, b_team: 6, venue_id: 6,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "06:00 PM" },
    {match_date: Date.parse("2022-11-02"), group: "Super 12 Group 2", a_team: 12, b_team: 18, venue_id: 7,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "02:30 PM" },
    {match_date: Date.parse("2022-11-02"), group: "Super 12 Group 2", a_team: 1, b_team: 8, venue_id: 7,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "06:30 PM" },
    {match_date: Date.parse("2022-11-03"), group: "Super 12 Group 2", a_team: 3, b_team: 4, venue_id: 3,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-11-04"), group: "Super 12 Group 1", a_team: 6, b_team: 14, venue_id: 7,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "02:30 PM" },
    {match_date: Date.parse("2022-11-04"), group: "Super 12 Group 1", a_team: 5, b_team: 10, venue_id: 7,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "06:30 PM" },
    {match_date: Date.parse("2022-11-05"), group: "Super 12 Group 1", a_team: 2, b_team: 9, venue_id: 3,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-11-06"), group: "Super 12 Group 2", a_team: 4, b_team: 18, venue_id: 7,  time_gmt: "12:00 AM", time_ist: "5:30 AM", time_local: "10:30 AM" },
    {match_date: Date.parse("2022-11-06"), group: "Super 12 Group 2", a_team: 3, b_team: 8, venue_id: 7,  time_gmt: "04:00 AM", time_ist: "9:30 AM", time_local: "02:30 PM" },
    {match_date: Date.parse("2022-11-06"), group: "Super 12 Group 2", a_team: 1, b_team: 12, venue_id: 5,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-11-09"), group: "1st Semi-Final", a_team: nil, b_team: nil, venue_id: 3,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" },
    {match_date: Date.parse("2022-11-10"), group: "2nd Semi-Final", a_team: 0, b_team: 0, venue_id: 7,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "06:30 PM" },
    {match_date: Date.parse("2022-11-13"), group: "Final", a_team: 0, b_team: 0, venue_id: 5,  time_gmt: "08:00 AM", time_ist: "1:30 PM", time_local: "07:00 PM" }
])
User.create!(email: "user@gmail.com", password: "Admin@123")