import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
    stages: [
        { duration: '30s', target: 20 },
        { duration: '1m30s', target: 10 },
        { duration: '1m', target: 20 },
        { duration: '1m', target: 20 },
        { duration: '1m', target: 20 },
        { duration: '30s', target: 20 },
    ],
};

export default function() {
    let res = http.get('http://cwt.rtaa.ninja');
    check(res, {
        'status was 200': r => r.status == 200,
        'transaction time OK': r => r.timings.duration < 200,
    });
    sleep(1);
}