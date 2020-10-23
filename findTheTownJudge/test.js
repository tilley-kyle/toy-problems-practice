const expect = require('chai').expect;
const findJudge = require('./problem');

it ('should find no judge', () => {
  expect(findJudge(3, [[1,3],[2,3],[3,1]])).to.equal(-1);
});

it ('should find no judge', () => {
  expect(findJudge(3, [[1,2],[2,3]])).to.equal(-1);
});

it('should find the judge', () => {
  expect(findJudge(2, [[1, 2]])).to.equal(2);
});

it('should find the judge', () => {
  expect(findJudge(4, [[1,3],[1,4],[2,3],[2,4],[4,3]])).to.equal(3);
});