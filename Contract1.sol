pragma solidity ^0.5.1;

contract Contract1 {
    uint256 public peopleCount;
    mapping(uint256 => Person) public people;

    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName)
        public
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount++;
    }
}
