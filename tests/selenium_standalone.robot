*** Settings ***
Library     SeleniumLibrary  screenshot_root_directory=reports/screenshots/selenium
Library     wopee_rf.Wopee    dot_env_path=.env

Resource    ../resources/common.robot

Test Teardown  Stop Scenario

*** Test Cases ***
Visual test w. SeleniumLibrary - Viewport
    Open Browser    https://wopee.io    headlesschrome

    ${timestamp}    Generate Timestamp

    Start Suite    suite_name=Suite name-${timestamp}
    Start Scenario    scenario_name=Scenario name-${timestamp}

    &{payload}    Create Dictionary    step_name=Step name-${timestamp}
    ${track_result}    Track Viewport    payload=&{payload}

Visual test w. SeleniumLibrary - Fullpage
    Open Browser    https://wopee.io    headlesschrome

    ${timestamp}    Generate Timestamp

    Start Suite    suite_name=Suite name-${timestamp}
    Start Scenario    scenario_name=Scenario name-${timestamp}

    &{payload}    Create Dictionary    step_name=Step name-${timestamp}
    ${track_result}    Track Fullpage    payload=&{payload}
