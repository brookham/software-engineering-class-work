**Authentication**



def loginRequest(request)

&nbsp; username = request.get("username")

&nbsp; password = request.get("password)



&nbsp; user = authenticate(username, password)<------- 

&nbsp;                                                |

&nbsp; if not user                                    |

&nbsp;   return "no profile exists"                   |

&nbsp; end                                            |

&nbsp;                                                |

&nbsp; return success                                 |

&nbsp;                                                |   

end                                              |

&nbsp;						 |

def authenticate(username, password) ------------

&nbsp; user = UserDataBase.getUser(username)

&nbsp; 

&nbsp; if not user:

&nbsp;   return "User Not Found"

&nbsp; end



&nbsp; if password != user.password

&nbsp;   return "Incorrect Password"

&nbsp; end



&nbsp; user

end



