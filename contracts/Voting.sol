pragma solidity ^0.8.0;

contract Voting {
    struct Vote {
        uint256 electionId;
        uint256[] candidateIds;
    }

    Vote[] private votes;

    event VoteStored(uint256 indexed voteIndex, uint256 electionId, uint256[] candidateIds);

    function storeVote(uint256 electionId, uint256[] calldata candidateIds) external {
        require(electionId > 0, "Invalid electionId");
        require(candidateIds.length > 0, "Candidate IDs cannot be empty");

        votes.push(Vote({
            electionId: electionId,
            candidateIds: candidateIds
        }));

        emit VoteStored(votes.length - 1, electionId, candidateIds);
    }

    function getVotesCount() public view returns (uint256) {
        return votes.length;
    }

    function getVote(uint256 index) public view returns (uint256 electionId, uint256[] memory candidateIds) {
        require(index < votes.length, "Invalid vote index");
        Vote storage v = votes[index];
        return (v.electionId, v.candidateIds);
    }
}
