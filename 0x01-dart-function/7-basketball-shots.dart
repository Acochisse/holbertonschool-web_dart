// Given two maps that represents the number of successful shots for each shot type in a basketball game between team A and Team B.

// Create a function whoWins() that calculates the total number of points for each team and return the winning team:

// If teamA points > teamB points return 1
// If teamA points < teamB points return 2
// If teamA points = TeamB points return 0
// A free throw shot counts as 1 Point. A 2 pointer shot counts as 2 Points. A 3 pointer shot counts as 3 Points.

// Function prototype : int whoWins(Map<String, int> team1, Map<String, int> team2);

int whoWins(Map<String, int> team1, Map<String, int> team2) {
    Map<String, int> counts = new HashMap<String, int>();
    for (Map.Entry<String, int> entry : team1.entrySet()) {
        counts.put(entry.getKey(), entry.getValue());
    }
    for (Map.Entry<String, int> entry : team2.entrySet()) {
        counts.put(entry.getKey(), counts.getOrDefault(entry.getKey(), 0) +
                entry.getValue());
    }
    int total = 0;
    for (Map.Entry<String, int> entry : counts.entrySet()) {
        total += entry.getValue();
    }
    return total;
}
