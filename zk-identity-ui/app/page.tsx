// app/page.tsx
import ZkForm from "../components/ ZkForm";

export default function Home() {
  return (
    <main className="min-h-screen bg-gradient-to-br from-indigo-900 to-purple-900">
      <nav className="p-6">
        <h1 className="text-3xl font-bold text-white">ZK Identity Swap</h1>
      </nav>

      <div className="container mx-auto px-4 py-12">
        <div className="max-w-2xl mx-auto">
          <div className="bg-white/10 backdrop-blur-lg rounded-2xl shadow-xl p-8">
            <h2 className="text-2xl font-semibold text-white mb-6 text-center">
              Private Identity Verification
            </h2>
            <ZkForm />
          </div>

          <div className="mt-8 text-center text-white/70">
            <p className="text-sm">
              Secure & Private • Zero Knowledge Proofs • Ethereum Network
            </p>
          </div>
        </div>
      </div>
    </main>
  );
}
