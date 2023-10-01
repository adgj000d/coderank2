#include<bits/stdc++.h>
#define ll long long
using namespace std;

int main()
{
    ll n, m; cin>>n>>m;

    ll sum = 0;

    for(ll i=0; i<m; i++){
        sum += i+1;
    }

    for(ll i=2; i<=n; i++){
        sum += m*i;
    }

    cout<<sum;

    return 0;
}