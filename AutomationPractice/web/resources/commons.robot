*** Settings ***   

Library         SeleniumLibrary
Library         FakerLibrary
Resource        ../tests/Cadastro/cadastroCliPage.robot
Resource        ../tests/Cadastro/cadastroCliSteps.robot
Resource        ../tests/Cadastro/cadastroCliElements.robot

*** Variable ***
${BROWSER}                         chrome
${HEADLESS}                        false  
${URL}                             http://automationpractice.com/index.php
${TIME_TO_WAIT}                    5