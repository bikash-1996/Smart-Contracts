//pragma solidity >=0.4.26 <0.70;
pragma experimental ABIEncoderV2;
// We have to specify what version of compiler this code will compile with

contract Movie_Ratings {
  /* mapping field below is equivalent to an associative array or hash.
  */
  
  mapping (string => uint256) public Received_ratings;
  
  /* We will use an array of bytes32 to store the list of movies
  */
  
  string[] public movieList;

  /* This is the constructor which will be called once when you
  deploy the contract to the blockchain. When we deploy the contract,
  we will pass an array of movies for which users will give ratings
  */
  constructor(string[] memory MovieNames) public {
    movieList = MovieNames;
  }

  // This function returns the total ratings a movie has received so far
  function VotesFor(string memory movies) view public returns (uint256) {
    return ratingsReceived[movies];
  }

  // This function increments the vote count for the specified movie. Equivalent to upvoting
  function voteForMovie(string memory movies) public {
    ratingsReceived[movies] += 1;
  }
}