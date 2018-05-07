# Maintainer: b03901023 b03901023@ntu.edu.tw
pkgname=sudo-oasis
pkgver=0.1
pkgrel=1
pkgdesc="People come to The Oasis for all the things they can do"
arch=('any')
license=('GPL')
depends=('sudo')

# TODO
source=('oasis-nopasswd' 'oasis.sysusers')
sha256sums=('03842d458a13da710db08b0459d1e4fd4229368d58b29d30bbf9be9788fb4d7c' '2013afc978a7365e6f731daded25ebc18ccc6e72bd5649d84d406fc8aac51aba')
package() { 
	install -dm0750 "$pkgdir"/etc/sudoers.d/
	install -m0600 "$srcdir"/oasis-nopasswd "$pkgdir"/etc/sudoers.d/oasis-nopasswd
	install -Dm0644 "$srcdir"/oasis.sysusers "$pkgdir"/usr/lib/sysusers.d/oasis.sysusers
}
