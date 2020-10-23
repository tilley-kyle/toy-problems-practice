/* In a town, there are N people labelled from 1 to N.  There is a rumor that one of these people is secretly the town judge.

If the town judge exists, then:

The town judge trusts nobody.
Everybody (except for the town judge) trusts the town judge.
There is exactly one person that satisfies properties 1 and 2.
You are given trust, an array of pairs trust[i] = [a, b] representing that the person labelled a trusts the person labelled b.

If the town judge exists and can be identified, return the label of the town judge.  Otherwise, return -1. */

//input: num and arr
//output: num
//const: NA
//edge: more than one judge? somebody trusts more than one person

var findJudge = function(N, trust) {
  const trustTracker = {};
  for (const tuple of trust) {
      if (!trustTracker[tuple[0]]) {
          trustTracker[tuple[0]] = {amIJudge: false, whoTrustsMe: []};
      }
      if (!trustTracker[tuple[1]]) {
          trustTracker[tuple[1]] = {amIJudge: true, whoTrustsMe: [tuple[0]]};
      } else if (trustTracker[tuple[1]]) {
          trustTracker[tuple[1]].whoTrustsMe.push(tuple[0]);
      }
  }
  for (const person in trustTracker) {
      if (trustTracker[person].amIJudge) {
          return parseInt(person);
      }
  }
  return -1;
};

module.exports = findJudge;