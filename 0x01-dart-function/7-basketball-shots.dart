int whoWins(Map<String, int> teamA, Map<String, int> teamB){
  var team1Total = teamA['Free throws']! + teamA['2 pointers']! * 2 + teamA['3 pointers']! * 3;
  var team2Total = teamB['Free throws']! + teamB['2 pointers']! * 2 + teamB['3 pointers']! * 3;
  if (team1Total > team2Total) return 1;
  if (team1Total < team2Total) return 2;
  return 0;}