Workflow Test-Workflow {
    "This will run first"
    parallel {
        "Command 1"
        "Command 2"
    sequence {
            "Command A"
            "Command B"
            "Command C"
        }
        "Command 3"
        "Command 4"
        "Command 5"
        "Command 6"
        get-service | measure
        "Command 7"
    }
}
cls
Test-Workflow 