*** Settings ***
Documentation
Library                                         RequestsLibrary
Library                                         Collections
Library                                         JSONLibrary
Library                                         String
Library                                         ../resources/ApiPayload.py
Resource                                        ../routes/ApiRoutes.robot

*** Variables ***
${CLIENTE_ID}                                   EUViHOVj4rmwcF1ZDgGlhStCDD7P8qi1dleafMkMZwW874qTtB
${CLIENTE_SECRET}                               FGrZRgOfeCx6JujoTr4DNwnKI3LeQdEuYxaeMr3N
${CLIENTE_ID_INVALIDO}                          FGrZRgOfeCx6JujoTr4DNwnKI3LeQdEuYxaeMr3N
${CLIENTE_SECRET_INVALIDO}                      EUViHOVj4rmwcF1ZDgGlhStCDD7P8qi1dleafMkMZwW874qTtB
${URL_BASE}                                     https://api.petfinder.com/v2/
${ENDPOINT_TOKEN}                               oauth2/token
${ENDPOINT_ANIMALS}                             animals
${ID-57672299}                                  57672299
${STATUS_SUCCESS}                               200
${STATUS_FAIL}                                  401



