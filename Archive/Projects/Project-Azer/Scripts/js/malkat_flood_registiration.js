import http from "k6/http";
import { check, sleep } from "k6";

export const options = {

  // Simulate gradually increasing traffic
  stages: [

    // Ramp from 0 to 10 users in 1 minute
    { duration: "1m", target: 10 },

    // Ramp from 10 to 50 users in 2 minutes
    { duration: "2m", target: 50 },

    // Ramp from 50 to 100 users in 2 minutes
    { duration: "2m", target: 100 },

    // Ramp down from 100 users to 0 in 1 minute
    { duration: "1m", target: 0 },
  ],

  thresholds: {

    // 95% of requests must finish within 2 seconds
    http_req_duration: ["p(95)<2000"],

    // Less than 1% of requests may fail
    http_req_failed: ["rate<0.01"],
  },
};

export default function () {
  const userId = `${Date.now()}_${__VU}_${__ITER}`;

  const body = JSON.stringify([
    {
      firstName: `test_${userId}`,
      email: `test_${userId}@mailinator.com`,
      phone: `500${String(Math.floor(Math.random() * 1000000)).padStart(6, "0")}`,
      password: "AdmiN#123",
      confirmPassword: "AdmiN#123",
      acceptedTerms: true,
    },
  ]);

  const headers = {
    Accept: "text/x-component",
    "Content-Type": "text/plain;charset=UTF-8",
    "Next-Action": "4022a0ac00e6d4670e6d355fa559d0c6ebe40d675e",
    Origin: "https://malkat.codlop.sa",
    Referer: "https://malkat.codlop.sa/register",
  };

  const response = http.post("https://malkat.codlop.sa/register", body, {
    headers,
  });

  check(response, {
    "status 201": (r) => r.status === 201,
    "response < 2 sec": (r) => r.timings.duration < 2000,
  });

  sleep(1);
//   console.log(`Status = ${response.status}`);
//   console.log(response.body);
}
