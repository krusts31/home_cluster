for vmid in $(qm list | awk 'NR>1 {print $1}'); do
  echo "Deleting VM $vmid..."
  qm destroy $vmid --purge
done
