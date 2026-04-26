$fn = 64;

union() {
	color(alpha = 1.0, c = "CornflowerBlue") {
		difference() {
			union() {
				difference() {
					union() {
						hull() {
							translate(v = [15, 15, 0]) {
								cylinder(h = 200, r = 15);
							}
							translate(v = [285, 15, 0]) {
								cylinder(h = 200, r = 15);
							}
							translate(v = [15, 185, 0]) {
								cylinder(h = 200, r = 15);
							}
							translate(v = [285, 185, 0]) {
								cylinder(h = 200, r = 15);
							}
						}
						hull() {
							translate(v = [210, -45, 180]) {
								hull() {
									translate(v = [5, 5, 0]) {
										cylinder(h = 20, r = 5);
									}
									translate(v = [65, 5, 0]) {
										cylinder(h = 20, r = 5);
									}
									translate(v = [5, 40, 0]) {
										cylinder(h = 20, r = 5);
									}
									translate(v = [65, 40, 0]) {
										cylinder(h = 20, r = 5);
									}
								}
							}
							translate(v = [210, 0, 130]) {
								cube(size = [70, 0.1, 70]);
							}
						}
					}
					union() {
						translate(v = [4, 4, 5]) {
							hull() {
								translate(v = [11, 11, 0]) {
									cylinder(h = 201, r = 11);
								}
								translate(v = [281, 11, 0]) {
									cylinder(h = 201, r = 11);
								}
								translate(v = [11, 181, 0]) {
									cylinder(h = 201, r = 11);
								}
								translate(v = [281, 181, 0]) {
									cylinder(h = 201, r = 11);
								}
							}
						}
						hull() {
							translate(v = [214, -41, 181]) {
								hull() {
									translate(v = [3, 3, 0]) {
										cylinder(h = 20, r = 3);
									}
									translate(v = [59, 3, 0]) {
										cylinder(h = 20, r = 3);
									}
									translate(v = [3, 38, 0]) {
										cylinder(h = 20, r = 3);
									}
									translate(v = [59, 38, 0]) {
										cylinder(h = 20, r = 3);
									}
								}
							}
							translate(v = [214, 0, 134]) {
								cube(size = [62, 0.1, 66]);
							}
						}
						translate(v = [220, -10, 140]) {
							cube(size = [50, 20, 50]);
						}
					}
				}
				translate(v = [10.0, 100.0, 100.0]) {
					union() {
						cylinder(d = 20, h = 100.0);
						translate(v = [0, 0, 100.0]) {
							cylinder(d = 13.5, h = 8);
						}
					}
				}
			}
			union() {
				translate(v = [10.0, 100.0, 99.9]) {
					cylinder(d = 14, h = 120.0);
				}
				translate(v = [-1, 112.0, 185]) {
					cube(size = [6, 10, 16]);
				}
			}
		}
	}
	translate(v = [-11, -11, 0]) {
		color(alpha = 1.0, c = "DarkSlateGray") {
			difference() {
				union() {
					difference() {
						hull() {
							translate(v = [26, 26, 0]) {
								cylinder(h = 200, r = 26);
							}
							translate(v = [296, 26, 0]) {
								cylinder(h = 200, r = 26);
							}
							translate(v = [26, 196, 0]) {
								cylinder(h = 200, r = 26);
							}
							translate(v = [296, 196, 0]) {
								cylinder(h = 200, r = 26);
							}
						}
						translate(v = [5, 5, -1]) {
							hull() {
								translate(v = [21, 21, 0]) {
									cylinder(h = 202, r = 21);
								}
								translate(v = [291, 21, 0]) {
									cylinder(h = 202, r = 21);
								}
								translate(v = [21, 191, 0]) {
									cylinder(h = 202, r = 21);
								}
								translate(v = [291, 191, 0]) {
									cylinder(h = 202, r = 21);
								}
							}
						}
						translate(v = [28, -10, 7]) {
							cube(size = [266, 100, 186]);
						}
						translate(v = [28, 132, 7]) {
							cube(size = [266, 100, 186]);
						}
						translate(v = [-10, 28, 7]) {
							cube(size = [100, 166, 186]);
						}
						translate(v = [232, 28, 7]) {
							cube(size = [100, 166, 186]);
						}
					}
					translate(v = [26, 0, 5]) {
						rotate(a = [90, 0, 0]) {
							intersection() {
								cube(size = [270, 190, 7]);
								linear_extrude(height = 5) {
									union() {
										translate(v = [0, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [296, 222, 5]) {
						rotate(a = [90, 0, 180]) {
							intersection() {
								cube(size = [270, 190, 7]);
								linear_extrude(height = 5) {
									union() {
										translate(v = [0, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [210.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [230.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [250.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [270.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [290.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [200, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [220, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [240, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [260, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [280, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 196, 5]) {
						rotate(a = [90, 0, -90]) {
							intersection() {
								cube(size = [170, 190, 7]);
								linear_extrude(height = 5) {
									union() {
										translate(v = [0, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [322, 26, 5]) {
						rotate(a = [90, 0, 90]) {
							intersection() {
								cube(size = [170, 190, 7]);
								linear_extrude(height = 5) {
									union() {
										translate(v = [0, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 0, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 20, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 40, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 60, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 80, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 100, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 120, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 140, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 160, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [10.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [30.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [50.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [70.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [90.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [110.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [130.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [150.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [170.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [190.0, 180, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [0, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [20, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [40, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [60, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [80, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [100, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [120, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [140, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [160, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
										translate(v = [180, 200, 0]) {
											difference() {
												hull() {
													translate(v = [0, 15]) {
														circle(r = 2);
													}
													translate(v = [0, -15]) {
														circle(r = 2);
													}
													translate(v = [15, 0]) {
														circle(r = 2);
													}
													translate(v = [-15, 0]) {
														circle(r = 2);
													}
												}
												hull() {
													translate(v = [0, 8.0]) {
														circle(d = 5.2);
													}
													translate(v = [0, -8.0]) {
														circle(d = 5.2);
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [61, 12, 20]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [61, 210, 20]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [161, 12, 20]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [161, 210, 20]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [261, 12, 20]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [261, 210, 20]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [12, 61, 20]) {
						rotate(a = [0, -90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [12, 161, 20]) {
						rotate(a = [0, -90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [310, 41, 20]) {
						rotate(a = [0, 90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [310, 181, 20]) {
						rotate(a = [0, 90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [61, 12, 90]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [61, 210, 90]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [161, 12, 90]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [161, 210, 90]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [261, 12, 90]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [261, 210, 90]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [12, 61, 90]) {
						rotate(a = [0, -90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [12, 161, 90]) {
						rotate(a = [0, -90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [310, 41, 90]) {
						rotate(a = [0, 90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [310, 181, 90]) {
						rotate(a = [0, 90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [61, 12, 180]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [61, 210, 180]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [161, 12, 180]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [161, 210, 180]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [261, 12, 180]) {
						rotate(a = [90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [261, 210, 180]) {
						rotate(a = [-90, 0, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [12, 61, 180]) {
						rotate(a = [0, -90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [12, 161, 180]) {
						rotate(a = [0, -90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [310, 41, 180]) {
						rotate(a = [0, 90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
					translate(v = [310, 181, 180]) {
						rotate(a = [0, 90, 0]) {
							cylinder(d1 = 10, d2 = 6, h = 8);
						}
					}
				}
				union() {
					translate(v = [192, -10, 100]) {
						cube(size = [120, 31, 110]);
					}
				}
			}
		}
	}
	color(alpha = 1.0, c = "OliveDrab") {
		translate(v = [210, -45, 200]) {
			difference() {
				union() {
					hull() {
						translate(v = [5, 5, 0]) {
							cylinder(h = 4, r = 5);
						}
						translate(v = [65, 5, 0]) {
							cylinder(h = 4, r = 5);
						}
						translate(v = [5, 40, 0]) {
							cylinder(h = 4, r = 5);
						}
						translate(v = [65, 40, 0]) {
							cylinder(h = 4, r = 5);
						}
					}
					translate(v = [4, 4, -4]) {
						hull() {
							translate(v = [3, 3, 0]) {
								cylinder(h = 4, r = 3);
							}
							translate(v = [59, 3, 0]) {
								cylinder(h = 4, r = 3);
							}
							translate(v = [3, 34, 0]) {
								cylinder(h = 4, r = 3);
							}
							translate(v = [59, 34, 0]) {
								cylinder(h = 4, r = 3);
							}
						}
					}
				}
				translate(v = [35, 25, -10]) {
					cylinder(d = 6, h = 20);
				}
			}
		}
	}
	color(alpha = 1.0, c = "Red") {
		translate(v = [245, -20, 25]) {
			union() {
				cylinder(d = 4, h = 215);
				cylinder(d = 12, h = 30);
				translate(v = [0, 0, 215]) {
					sphere(d = 8);
				}
			}
		}
	}
	translate(v = [0, 0, 210]) {
		union() {
			color(alpha = 1.0, c = "MediumSeaGreen") {
				difference() {
					union() {
						difference() {
							union() {
								hull() {
									translate(v = [15, 15, 0]) {
										cylinder(h = 100, r = 15);
									}
									translate(v = [285, 15, 0]) {
										cylinder(h = 100, r = 15);
									}
									translate(v = [15, 185, 0]) {
										cylinder(h = 100, r = 15);
									}
									translate(v = [285, 185, 0]) {
										cylinder(h = 100, r = 15);
									}
								}
								translate(v = [4.4, 4.4, -10]) {
									hull() {
										translate(v = [10.6, 10.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
										translate(v = [280.59999999999997, 10.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
										translate(v = [10.6, 180.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
										translate(v = [280.59999999999997, 180.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
									}
								}
							}
							translate(v = [4, 4, 5]) {
								hull() {
									translate(v = [11, 11, 0]) {
										cylinder(h = 101, r = 11);
									}
									translate(v = [281, 11, 0]) {
										cylinder(h = 101, r = 11);
									}
									translate(v = [11, 181, 0]) {
										cylinder(h = 101, r = 11);
									}
									translate(v = [281, 181, 0]) {
										cylinder(h = 101, r = 11);
									}
								}
							}
						}
						translate(v = [100, 0, 5]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-45.0, -30, 50]) {
										cylinder(h = 0.1, r = 15);
									}
									translate(v = [45.0, -30, 50]) {
										cylinder(h = 0.1, r = 15);
									}
									translate(v = [-60.0, 4, 50]) {
										cube(size = [120, 0.1, 0.1]);
									}
									translate(v = [-45.0, -30, 15]) {
										sphere(r = 15);
									}
									translate(v = [45.0, -30, 15]) {
										sphere(r = 15);
									}
									translate(v = [-60.0, 4, 0]) {
										cube(size = [120, 0.1, 15]);
									}
								}
							}
						}
						translate(v = [220, 200, 5]) {
							rotate(a = [0, 0, 180]) {
								hull() {
									translate(v = [-45.0, -30, 50]) {
										cylinder(h = 0.1, r = 15);
									}
									translate(v = [45.0, -30, 50]) {
										cylinder(h = 0.1, r = 15);
									}
									translate(v = [-60.0, 4, 50]) {
										cube(size = [120, 0.1, 0.1]);
									}
									translate(v = [-45.0, -30, 15]) {
										sphere(r = 15);
									}
									translate(v = [45.0, -30, 15]) {
										sphere(r = 15);
									}
									translate(v = [-60.0, 4, 0]) {
										cube(size = [120, 0.1, 15]);
									}
								}
							}
						}
						translate(v = [10.0, 100.0, 0]) {
							union() {
								cylinder(d = 20, h = 100);
								translate(v = [0, 0, 100]) {
									cylinder(d = 13.5, h = 8);
								}
							}
						}
						translate(v = [150.0, 100.0, 5]) {
							union() {
								cylinder(d = 28, h = 40);
								translate(v = [0, 0, 50]) {
									cylinder(d1 = 44, d2 = 29, h = 8);
								}
								rotate(a = [0, 0, 0]) {
									translate(v = [13.0, 0, 40]) {
										cylinder(d = 3, h = 10);
									}
								}
								rotate(a = [0, 0, 120]) {
									translate(v = [13.0, 0, 40]) {
										cylinder(d = 3, h = 10);
									}
								}
								rotate(a = [0, 0, 240]) {
									translate(v = [13.0, 0, 40]) {
										cylinder(d = 3, h = 10);
									}
								}
							}
						}
					}
					union() {
						translate(v = [100, 0, 9]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-45.0, -30, 0]) {
										cylinder(h = 46.1, r = 11);
									}
									translate(v = [45.0, -30, 0]) {
										cylinder(h = 46.1, r = 11);
									}
									translate(v = [-56.0, 6, 0]) {
										cube(size = [112, 0.1, 46.1]);
									}
								}
							}
						}
						translate(v = [220, 200, 9]) {
							rotate(a = [0, 0, 180]) {
								hull() {
									translate(v = [-45.0, -30, 0]) {
										cylinder(h = 46.1, r = 11);
									}
									translate(v = [45.0, -30, 0]) {
										cylinder(h = 46.1, r = 11);
									}
									translate(v = [-56.0, 6, 0]) {
										cube(size = [112, 0.1, 46.1]);
									}
								}
							}
						}
						translate(v = [10.0, 100.0, -11]) {
							cylinder(d = 14, h = 130);
						}
						translate(v = [150.0, 100.0, -11]) {
							cylinder(d = 24, h = 57);
						}
					}
				}
			}
			translate(v = [-11, -11, 0]) {
				color(alpha = 1.0, c = "DarkSlateGray") {
					difference() {
						union() {
							difference() {
								hull() {
									translate(v = [26, 26, 0]) {
										cylinder(h = 100, r = 26);
									}
									translate(v = [296, 26, 0]) {
										cylinder(h = 100, r = 26);
									}
									translate(v = [26, 196, 0]) {
										cylinder(h = 100, r = 26);
									}
									translate(v = [296, 196, 0]) {
										cylinder(h = 100, r = 26);
									}
								}
								translate(v = [5, 5, -1]) {
									hull() {
										translate(v = [21, 21, 0]) {
											cylinder(h = 102, r = 21);
										}
										translate(v = [291, 21, 0]) {
											cylinder(h = 102, r = 21);
										}
										translate(v = [21, 191, 0]) {
											cylinder(h = 102, r = 21);
										}
										translate(v = [291, 191, 0]) {
											cylinder(h = 102, r = 21);
										}
									}
								}
								translate(v = [28, -10, 7]) {
									cube(size = [266, 100, 86]);
								}
								translate(v = [28, 132, 7]) {
									cube(size = [266, 100, 86]);
								}
								translate(v = [-10, 28, 7]) {
									cube(size = [100, 166, 86]);
								}
								translate(v = [232, 28, 7]) {
									cube(size = [100, 166, 86]);
								}
							}
							translate(v = [26, 0, 5]) {
								rotate(a = [90, 0, 0]) {
									intersection() {
										cube(size = [270, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [296, 222, 5]) {
								rotate(a = [90, 0, 180]) {
									intersection() {
										cube(size = [270, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 196, 5]) {
								rotate(a = [90, 0, -90]) {
									intersection() {
										cube(size = [170, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [322, 26, 5]) {
								rotate(a = [90, 0, 90]) {
									intersection() {
										cube(size = [170, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [61, 12, 20]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [61, 210, 20]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 12, 20]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 210, 20]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 12, 20]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 210, 20]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 61, 20]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 161, 20]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 41, 20]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 181, 20]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [61, 12, 80]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [61, 210, 80]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 12, 80]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 210, 80]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 12, 80]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 210, 80]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 61, 80]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 161, 80]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 41, 80]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 181, 80]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
						}
						union() {
							translate(v = [11, 11, 0]) {
								union() {
									translate(v = [100, 0, -10]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [-70.0, -100, 0]) {
												cube(size = [140, 100, 300]);
											}
										}
									}
									translate(v = [220, 200, -10]) {
										rotate(a = [0, 0, 180]) {
											translate(v = [-70.0, -100, 0]) {
												cube(size = [140, 100, 300]);
											}
										}
									}
								}
							}
						}
					}
				}
			}
			translate(v = [100, 0, 95]) {
				rotate(a = [0, 0, 0]) {
					color(alpha = 1.0, c = "OliveDrab") {
						difference() {
							union() {
								translate(v = [0, 0, -8]) {
									linear_extrude(height = 8) {
										translate(v = [0, -0.5]) {
											hull() {
												translate(v = [-55.5, 0]) {
													square(size = [111.0, 0.1]);
												}
												translate(v = [-45.0, -30.0]) {
													circle(r = 10.5);
												}
												translate(v = [45.0, -30.0]) {
													circle(r = 10.5);
												}
											}
										}
									}
								}
								difference() {
									linear_extrude(height = 100) {
										hull() {
											translate(v = [-60.0, 0]) {
												square(size = [120, 0.1]);
											}
											translate(v = [-45.0, -30]) {
												circle(r = 15);
											}
											translate(v = [45.0, -30]) {
												circle(r = 15);
											}
										}
									}
									translate(v = [0, -45, 5]) {
										rotate(a = [35, 0, 0]) {
											translate(v = [-120, 0, 0]) {
												cube(size = [240, 200, 200]);
											}
										}
									}
								}
							}
							difference() {
								translate(v = [0, 0, -9]) {
									linear_extrude(height = 120) {
										translate(v = [0, -4.5]) {
											hull() {
												translate(v = [-51.5, 10]) {
													square(size = [103.0, 0.1]);
												}
												translate(v = [-45.0, -30.0]) {
													circle(r = 6.5);
												}
												translate(v = [45.0, -30.0]) {
													circle(r = 6.5);
												}
											}
										}
									}
								}
								translate(v = [0, -45, 0.11690164495417577]) {
									rotate(a = [35, 0, 0]) {
										translate(v = [-120, -50, 0]) {
											cube(size = [240, 200, 200]);
										}
									}
								}
							}
							translate(v = [0, -45, 5]) {
								rotate(a = [35, 0, 0]) {
									union() {
										translate(v = [-30, 25, -50]) {
											cylinder(d = 40.5, h = 100);
										}
										translate(v = [30, 25, -50]) {
											cylinder(d = 40.5, h = 100);
										}
									}
								}
							}
						}
					}
				}
			}
			translate(v = [220, 200, 95]) {
				rotate(a = [0, 0, 180]) {
					color(alpha = 1.0, c = "OliveDrab") {
						difference() {
							union() {
								translate(v = [0, 0, -8]) {
									linear_extrude(height = 8) {
										translate(v = [0, -0.5]) {
											hull() {
												translate(v = [-55.5, 0]) {
													square(size = [111.0, 0.1]);
												}
												translate(v = [-45.0, -30.0]) {
													circle(r = 10.5);
												}
												translate(v = [45.0, -30.0]) {
													circle(r = 10.5);
												}
											}
										}
									}
								}
								difference() {
									linear_extrude(height = 100) {
										hull() {
											translate(v = [-60.0, 0]) {
												square(size = [120, 0.1]);
											}
											translate(v = [-45.0, -30]) {
												circle(r = 15);
											}
											translate(v = [45.0, -30]) {
												circle(r = 15);
											}
										}
									}
									translate(v = [0, -45, 5]) {
										rotate(a = [35, 0, 0]) {
											translate(v = [-120, 0, 0]) {
												cube(size = [240, 200, 200]);
											}
										}
									}
								}
							}
							difference() {
								translate(v = [0, 0, -9]) {
									linear_extrude(height = 120) {
										translate(v = [0, -4.5]) {
											hull() {
												translate(v = [-51.5, 10]) {
													square(size = [103.0, 0.1]);
												}
												translate(v = [-45.0, -30.0]) {
													circle(r = 6.5);
												}
												translate(v = [45.0, -30.0]) {
													circle(r = 6.5);
												}
											}
										}
									}
								}
								translate(v = [0, -45, 0.11690164495417577]) {
									rotate(a = [35, 0, 0]) {
										translate(v = [-120, -50, 0]) {
											cube(size = [240, 200, 200]);
										}
									}
								}
							}
							translate(v = [0, -45, 5]) {
								rotate(a = [35, 0, 0]) {
									union() {
										translate(v = [-30, 25, -50]) {
											cylinder(d = 40.5, h = 100);
										}
										translate(v = [30, 25, -50]) {
											cylinder(d = 40.5, h = 100);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 320]) {
		union() {
			color(alpha = 1.0, c = "PaleGreen") {
				difference() {
					union() {
						difference() {
							union() {
								hull() {
									translate(v = [15, 15, 0]) {
										cylinder(h = 100, r = 15);
									}
									translate(v = [285, 15, 0]) {
										cylinder(h = 100, r = 15);
									}
									translate(v = [15, 185, 0]) {
										cylinder(h = 100, r = 15);
									}
									translate(v = [285, 185, 0]) {
										cylinder(h = 100, r = 15);
									}
								}
								translate(v = [4.4, 4.4, -10]) {
									hull() {
										translate(v = [10.6, 10.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
										translate(v = [280.59999999999997, 10.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
										translate(v = [10.6, 180.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
										translate(v = [280.59999999999997, 180.6, 0]) {
											cylinder(h = 10, r = 10.6);
										}
									}
								}
							}
							translate(v = [4, 4, 5]) {
								hull() {
									translate(v = [11, 11, 0]) {
										cylinder(h = 101, r = 11);
									}
									translate(v = [281, 11, 0]) {
										cylinder(h = 101, r = 11);
									}
									translate(v = [11, 181, 0]) {
										cylinder(h = 101, r = 11);
									}
									translate(v = [281, 181, 0]) {
										cylinder(h = 101, r = 11);
									}
								}
							}
						}
						translate(v = [10.0, 100.0, 0]) {
							union() {
								cylinder(d = 20, h = 75);
								translate(v = [0, 0, 75]) {
									union() {
										sphere(d = 20);
										rotate(a = [0, 90, 0]) {
											cylinder(d = 20, h = 25);
										}
										translate(v = [25, 0, 0]) {
											union() {
												sphere(d = 20);
												translate(v = [0, 0, -15]) {
													cylinder(d = 20, h = 15);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [150.0, 100.0, 5]) {
							union() {
								cylinder(d = 28, h = 40);
								translate(v = [0, 0, 50]) {
									cylinder(d1 = 44, d2 = 29, h = 8);
								}
								rotate(a = [0, 0, 0]) {
									translate(v = [13.0, 0, 40]) {
										cylinder(d = 3, h = 10);
									}
								}
								rotate(a = [0, 0, 120]) {
									translate(v = [13.0, 0, 40]) {
										cylinder(d = 3, h = 10);
									}
								}
								rotate(a = [0, 0, 240]) {
									translate(v = [13.0, 0, 40]) {
										cylinder(d = 3, h = 10);
									}
								}
							}
						}
					}
					union() {
						translate(v = [10.0, 100.0, -11]) {
							cylinder(d = 14, h = 86);
						}
						translate(v = [10.0, 100.0, 75]) {
							union() {
								sphere(d = 14);
								rotate(a = [0, 90, 0]) {
									cylinder(d = 14, h = 25);
								}
								translate(v = [25, 0, 0]) {
									union() {
										sphere(d = 14);
										translate(v = [0, 0, -16]) {
											cylinder(d = 14, h = 16);
										}
									}
								}
							}
						}
						translate(v = [150.0, 100.0, -11]) {
							cylinder(d = 24, h = 57);
						}
					}
				}
			}
			translate(v = [-11, -11, 0]) {
				color(alpha = 1.0, c = "DarkSlateGray") {
					difference() {
						union() {
							difference() {
								hull() {
									translate(v = [26, 26, 0]) {
										cylinder(h = 100, r = 26);
									}
									translate(v = [296, 26, 0]) {
										cylinder(h = 100, r = 26);
									}
									translate(v = [26, 196, 0]) {
										cylinder(h = 100, r = 26);
									}
									translate(v = [296, 196, 0]) {
										cylinder(h = 100, r = 26);
									}
								}
								translate(v = [5, 5, -1]) {
									hull() {
										translate(v = [21, 21, 0]) {
											cylinder(h = 102, r = 21);
										}
										translate(v = [291, 21, 0]) {
											cylinder(h = 102, r = 21);
										}
										translate(v = [21, 191, 0]) {
											cylinder(h = 102, r = 21);
										}
										translate(v = [291, 191, 0]) {
											cylinder(h = 102, r = 21);
										}
									}
								}
								translate(v = [28, -10, 7]) {
									cube(size = [266, 100, 86]);
								}
								translate(v = [28, 132, 7]) {
									cube(size = [266, 100, 86]);
								}
								translate(v = [-10, 28, 7]) {
									cube(size = [100, 166, 86]);
								}
								translate(v = [232, 28, 7]) {
									cube(size = [100, 166, 86]);
								}
							}
							translate(v = [26, 0, 5]) {
								rotate(a = [90, 0, 0]) {
									intersection() {
										cube(size = [270, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [296, 222, 5]) {
								rotate(a = [90, 0, 180]) {
									intersection() {
										cube(size = [270, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [200, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [220, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [240, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [260, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [280, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [210.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [230.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [250.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [270.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [290.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 196, 5]) {
								rotate(a = [90, 0, -90]) {
									intersection() {
										cube(size = [170, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [322, 26, 5]) {
								rotate(a = [90, 0, 90]) {
									intersection() {
										cube(size = [170, 90, 7]);
										linear_extrude(height = 5) {
											union() {
												translate(v = [0, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 0, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 20, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 40, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 60, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [0, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [20, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [40, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [60, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [80, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [100, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [120, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [140, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [160, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [180, 80, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [10.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [30.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [50.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [70.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [90.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [110.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [130.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [150.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [170.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
												translate(v = [190.0, 100, 0]) {
													difference() {
														hull() {
															translate(v = [0, 15]) {
																circle(r = 2);
															}
															translate(v = [0, -15]) {
																circle(r = 2);
															}
															translate(v = [15, 0]) {
																circle(r = 2);
															}
															translate(v = [-15, 0]) {
																circle(r = 2);
															}
														}
														hull() {
															translate(v = [0, 8.0]) {
																circle(d = 5.2);
															}
															translate(v = [0, -8.0]) {
																circle(d = 5.2);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [61, 12, 20]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [61, 210, 20]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 12, 20]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 210, 20]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 12, 20]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 210, 20]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 61, 20]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 161, 20]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 41, 20]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 181, 20]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [61, 12, 80]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [61, 210, 80]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 12, 80]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [161, 210, 80]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 12, 80]) {
								rotate(a = [90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [261, 210, 80]) {
								rotate(a = [-90, 0, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 61, 80]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [12, 161, 80]) {
								rotate(a = [0, -90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 41, 80]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
							translate(v = [310, 181, 80]) {
								rotate(a = [0, 90, 0]) {
									cylinder(d1 = 10, d2 = 6, h = 8);
								}
							}
						}
						union();
					}
				}
			}
			translate(v = [0, 0, 110]) {
				color(alpha = 1.0, c = "OliveDrab") {
					difference() {
						union() {
							hull() {
								translate(v = [15, 15, 0]) {
									cylinder(h = 4, r = 15);
								}
								translate(v = [285, 15, 0]) {
									cylinder(h = 4, r = 15);
								}
								translate(v = [15, 185, 0]) {
									cylinder(h = 4, r = 15);
								}
								translate(v = [285, 185, 0]) {
									cylinder(h = 4, r = 15);
								}
							}
							translate(v = [4.4, 4.4, -4]) {
								hull() {
									translate(v = [10.6, 10.6, 0]) {
										cylinder(h = 4, r = 10.6);
									}
									translate(v = [280.59999999999997, 10.6, 0]) {
										cylinder(h = 4, r = 10.6);
									}
									translate(v = [10.6, 180.6, 0]) {
										cylinder(h = 4, r = 10.6);
									}
									translate(v = [280.59999999999997, 180.6, 0]) {
										cylinder(h = 4, r = 10.6);
									}
								}
							}
						}
						union() {
							translate(v = [40, 55, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [40, 145, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [85, 55, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [85, 145, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [130, 55, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [130, 145, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [175, 55, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [175, 145, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [220, 55, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [220, 145, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [265, 55, -5]) {
								cylinder(d = 40.5, h = 15);
							}
							translate(v = [265, 145, -5]) {
								cylinder(d = 40.5, h = 15);
							}
						}
					}
				}
			}
		}
	}
}
