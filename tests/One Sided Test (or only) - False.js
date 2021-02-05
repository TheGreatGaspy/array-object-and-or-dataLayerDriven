const mockData = {
  testing: true,
  "returnOptions":"manual",
  "targetEvents":[{"name":"fixed-odds-bets-placed"}],
  "or_table_one":[{"entry":"marketName","method":"equals","comparator":"something"}],"returnIfTrue":"true","arrayTarget":[{"arrayEndpoint":"placedBets.bets"},{"arrayEndpoint":"selections"}],"returnIfFalse":"false","gtmEventId":1,
  dataLayer: {
    event: "fixed-odds-bets-placed",
    placedBets:{  bets: [
      {
        selections: [
          {
            name: 'Wycombe Wanderers',
            id: 73628401,
            eventId: 869836,
            marketName: 'Match Result',
            marketId: '869836.null:20001.null',
            sportName: 'Football ',
            sportId: 2,
            sportSlug: 'football',
            tournamentId: 7470,
            tournamentName: 'FA Cup',
            numerator: 11,
            denominator: 1,
            decimalPrice: 12,
            isSP: false,
            dateStart: '2021-01-25T19:45:00.000Z',
            teamHome: 'Wycombe Wanderers',
            teamAway: 'Tottenham Hotspur',
            source: 'Sportsbook',
            isLive: false,
            jockeyName: '',
            stateOfPlay: ''
          }
        ],
        betType: 'Single',
        stake: 0.1,
        estimatedReturns: 1.2,
        isEachWay: false,
        isFreeBet: false
      },
      {
        selections: [
          {
            name: 'Wycombe Wanderers',
            id: 73628401,
            eventId: 869836,
            marketName: 'Match Result',
            marketId: '869836.null:20001.null',
            sportName: 'Football ',
            sportId: 2,
            sportSlug: 'football',
            tournamentId: 7470,
            tournamentName: 'FA Cup',
            numerator: 11,
            denominator: 1,
            decimalPrice: 12,
            isSP: false,
            dateStart: '2021-01-25T19:45:00.000Z',
            teamHome: 'Wycombe Wanderers',
            teamAway: 'Tottenham Hotspur',
            source: 'Sportsbook',
            isLive: false,
            jockeyName: '',
            stateOfPlay: ''
          },
          {
            name: 'Liverpool',
            id: 73107763,
            eventId: 870058,
            marketName: 'Match Result',
            marketId: '870058.null:20001.null',
            sportName: 'Football ',
            sportId: 2,
            sportSlug: 'football',
            tournamentId: 633,
            tournamentName: 'Premier League',
            numerator: 5,
            denominator: 4,
            decimalPrice: 2.25,
            isSP: false,
            dateStart: '2021-01-28T20:00:00.000Z',
            teamHome: 'Tottenham Hotspur',
            teamAway: 'Liverpool',
            source: 'Sportsbook',
            isLive: false,
            jockeyName: '',
            stateOfPlay: ''
          },
          {
            name: 'Athletic Bilbao',
            id: 73274101,
            eventId: 879157,
            marketName: 'Match Result',
            marketId: '879157.null:20001.null',
            sportName: 'Football ',
            sportId: 2,
            sportSlug: 'football',
            tournamentId: 10695,
            tournamentName: 'Spanish Primera Division',
            numerator: 5,
            denominator: 4,
            decimalPrice: 2.25,
            isSP: false,
            dateStart: '2021-01-25T20:00:00.000Z',
            teamHome: 'Athletic Bilbao',
            teamAway: 'Getafe',
            source: 'Sportsbook',
            isLive: false,
            jockeyName: '',
            stateOfPlay: ''
          }
        ]
      }]
     }
             }
    };

// Call runCode to run the template's code.
let variableResult = runCode(mockData);

// Verify that the variable returns a result.
assertThat(variableResult).isEqualTo("false");