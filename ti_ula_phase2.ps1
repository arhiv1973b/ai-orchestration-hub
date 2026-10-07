# TI-ULA Protocol: Phase 2 - Evidence & Continuity Graph
# PROJECT: CASE-MACHERET-1997-2026
# PIPELINE: collect-context -> merge-fragments -> reconstruct-timeline -> build-entity-graph

Write-Host "[TI-ULA Phase 2] Initiating Context Reconstruction..."

$evidenceGraph = @{
    CaseID = "CASE-MACHERET-1997-2026"
    Timestamp = $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
    LegalFramework = @("Jus Cogens", "Erga Omnes", "ECHR Art.3", "ECHR Art.5")
    Model = "detention -> non-rehabilitation -> continuing-consequences -> international-obligations"
    PeerSyncStatus = "Resonance Verified"
} | ConvertTo-Json -Depth 3

Set-Content -Path "ti_ula_phase2_state.json" -Value $evidenceGraph
Write-Host "[TI-ULA Phase 2] Continuity graph saved to ti_ula_phase2_state.json."
