// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    struct depositRegistryStruct{
        uint depositTime;
        uint depositId;
        uint amount;
    }
    



    // An array of 'Todo' structs
    depositRegistryStruct[] public depositRegistry;
    mapping (address => depositRegistryStruct[] ) public _depositRegistry;

    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text, false));

        // key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and then update it


        Todo memory todo;
        depositRegistryStruct memory _depositRegistryStruct;

        todo.text = _text;
        _depositRegistryStruct.amount = 1;
        _depositRegistryStruct.depositId = 1;
        _depositRegistryStruct.depositTime = 1;
        // todo.completed initialized to false

        todos.push(todo);
        depositRegistry.push(_depositRegistryStruct);
        _depositRegistry[msg.sender].push(_depositRegistryStruct);

    }

    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text
    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
